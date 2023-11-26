#ifndef GUARD_INCLUDE_PROBFD_ALGORITHMS_HEURISTIC_DEPTH_FIRST_SEARCH_H
#error "This file should only be included from heuristic_depth_first_search.h"
#endif

#include "downward/utils/countdown_timer.h"

#include <cassert>

namespace probfd {
namespace algorithms {
namespace heuristic_depth_first_search {

namespace internal {

inline void Statistics::print(std::ostream& out) const
{
    out << "  Iterations: " << iterations << std::endl;
    out << "  Value iterations (backtracking): "
        << backtracking_value_iterations << std::endl;
    out << "  Value iterations (convergence): " << convergence_value_iterations
        << std::endl;
    out << "  Bellman backups (forward): " << forward_updates << std::endl;
    out << "  Bellman backups (backtracking): " << backtracking_updates
        << std::endl;
    out << "  Bellman backups (convergence): " << convergence_updates
        << std::endl;
}

bool ExpansionInfo::next_successor()
{
    successors.pop_back();
    return !successors.empty();
}

StateID ExpansionInfo::get_current_successor() const
{
    return successors.back();
}

} // namespace internal

template <typename State, typename Action, bool UseInterval>
HeuristicDepthFirstSearch<State, Action, UseInterval>::
    HeuristicDepthFirstSearch(
        std::shared_ptr<PolicyPicker> policy_chooser,
        bool LabelSolved,
        bool ForwardUpdates,
        BacktrackingUpdateType BackwardUpdates,
        bool CutoffInconsistent,
        bool GreedyExploration,
        bool PerformValueIteration,
        bool ExpandTipStates)
    : Base(std::move(policy_chooser))
    , LabelSolved(LabelSolved)
    , ForwardUpdates(ForwardUpdates)
    , BackwardUpdates(BackwardUpdates)
    , CutoffInconsistent(CutoffInconsistent)
    , GreedyExploration(GreedyExploration)
    , PerformValueIteration(PerformValueIteration)
    , ExpandTipStates(ExpandTipStates)
{
}

template <typename State, typename Action, bool UseInterval>
void HeuristicDepthFirstSearch<State, Action, UseInterval>::reset_search_state()
{
    for (StateInfo& state_info : this->get_state_infos()) {
        state_info.clear();
    }
}

template <typename State, typename Action, bool UseInterval>
Interval HeuristicDepthFirstSearch<State, Action, UseInterval>::do_solve(
    MDP& mdp,
    Evaluator& heuristic,
    param_type<State> state,
    ProgressReport& progress,
    double max_time)
{
    utils::CountdownTimer timer(max_time);

    const StateID stateid = mdp.get_state_id(state);
    if (PerformValueIteration) {
        solve_with_vi_termination(mdp, heuristic, stateid, progress, timer);
    } else {
        solve_without_vi_termination(mdp, heuristic, stateid, progress, timer);
    }

    return this->get_state_info(stateid).get_bounds();
}

template <typename State, typename Action, bool UseInterval>
void HeuristicDepthFirstSearch<State, Action, UseInterval>::
    print_additional_statistics(std::ostream& out) const
{
    statistics_.print(out);
}

template <typename State, typename Action, bool UseInterval>
void HeuristicDepthFirstSearch<State, Action, UseInterval>::
    solve_with_vi_termination(
        MDP& mdp,
        Evaluator& heuristic,
        StateID stateid,
        ProgressReport& progress,
        utils::CountdownTimer& timer)
{
    bool terminate = false;
    do {
        terminate = policy_exploration<true>(mdp, heuristic, stateid, timer) &&
                    value_iteration(mdp, heuristic, visited_, timer);

        visited_.clear();
        ++statistics_.iterations;
        progress.print();
    } while (!terminate);
}

template <typename State, typename Action, bool UseInterval>
void HeuristicDepthFirstSearch<State, Action, UseInterval>::
    solve_without_vi_termination(
        MDP& mdp,
        Evaluator& heuristic,
        StateID stateid,
        ProgressReport& progress,
        utils::CountdownTimer& timer)
{
    bool terminate = false;
    do {
        terminate = policy_exploration<false>(mdp, heuristic, stateid, timer);
        ++statistics_.iterations;
        progress.print();
        assert(visited_.empty());
    } while (!terminate);
}

template <typename State, typename Action, bool UseInterval>
template <bool GetVisited>
bool HeuristicDepthFirstSearch<State, Action, UseInterval>::policy_exploration(
    MDP& mdp,
    Evaluator& heuristic,
    StateID state,
    utils::CountdownTimer& timer)
{
    using namespace internal;
    using enum BacktrackingUpdateType;

    ClearGuard _guard(state_infos_);

    {
        StateInfo& pers_info = this->get_state_info(state);
        bool value_changed = false;
        bool pruned = false;
        const uint8_t pstatus =
            push(mdp, heuristic, state, pers_info, value_changed, pruned);

        if (pers_info.is_solved()) {
            // is terminal
            return true;
        }

        if (pstatus != ONSTACK) {
            return !value_changed && !pruned;
        }

        stack_.push_back(state);
        state_infos_[state].open(0);
    }

    bool keep_expanding = true;

    ExpansionInfo* einfo = &expansion_queue_.back();
    LocalStateInfo* sinfo = &state_infos_[einfo->stateid];

    for (;;) {
        // DFS recursion
        while (this->push_successor(
            mdp,
            heuristic,
            *einfo,
            *sinfo,
            keep_expanding,
            timer)) {
            einfo = &expansion_queue_.back();
            sinfo = &state_infos_[einfo->stateid];
        }

        // Iterative backtracking
        do {
            unsigned last_lowlink = sinfo->lowlink;
            bool last_unsolved_succs = einfo->unsolved_succs;
            bool last_dead = einfo->dead;
            bool last_value_changed = einfo->value_changed;

            if (BackwardUpdates == SINGLE ||
                (last_value_changed && BackwardUpdates == ON_DEMAND)) {
                statistics_.backtracking_updates++;
                auto result =
                    this->bellman_policy_update(mdp, heuristic, einfo->stateid);
                last_value_changed = result.value_changed;
                last_unsolved_succs =
                    last_unsolved_succs || result.policy_changed;
            }

            if (sinfo->index == sinfo->lowlink) {
                auto scc = stack_ | std::views::drop(sinfo->index);

                for (const StateID state_id : scc) {
                    state_infos_[state_id].status = UNSOLVED;
                }

                if constexpr (GetVisited) {
                    if (!last_unsolved_succs && !last_value_changed) {
                        visited_.insert(visited_.end(), scc.begin(), scc.end());
                    }
                }

                if (BackwardUpdates == CONVERGENCE && last_unsolved_succs) {
                    auto result = backtracking_value_iteration(
                        mdp,
                        heuristic,
                        scc,
                        timer);
                    last_value_changed = result.first;
                    last_unsolved_succs = result.second || last_unsolved_succs;
                }

                last_dead = false;

                last_unsolved_succs = last_unsolved_succs || last_value_changed;

                if (!last_unsolved_succs) {
                    const uint8_t closed = last_dead ? CLOSED_DEAD : CLOSED;
                    for (const StateID state_id : scc) {
                        state_infos_[state_id].status = closed;

                        if (LabelSolved) {
                            this->get_state_info(state_id).set_solved();
                        }
                    }
                }

                stack_.erase(scc.begin(), scc.end());
            }

            expansion_queue_.pop_back();

            if (expansion_queue_.empty())
                return !last_unsolved_succs && !last_value_changed;

            einfo = &expansion_queue_.back();
            sinfo = &state_infos_[einfo->stateid];

            sinfo->lowlink = std::min(sinfo->lowlink, last_lowlink);
            einfo->unsolved_succs =
                einfo->unsolved_succs || last_unsolved_succs;
            einfo->value_changed = einfo->value_changed || last_value_changed;
            einfo->dead = einfo->dead && last_dead;
        } while (!einfo->next_successor() || !keep_expanding);
    }
}

template <typename State, typename Action, bool UseInterval>
bool HeuristicDepthFirstSearch<State, Action, UseInterval>::push_successor(
    MDP& mdp,
    Evaluator& heuristic,
    ExpansionInfo& einfo,
    LocalStateInfo& sinfo,
    bool& keep_expanding,
    utils::CountdownTimer& timer)
{
    using namespace internal;

    do {
        timer.throw_if_expired();

        StateID succid = einfo.successors.back();

        StateInfo& pers_succ_info = this->get_state_info(succid);

        if (pers_succ_info.is_solved()) {
            if (!this->is_marked_dead_end(succid)) {
                einfo.dead = false;
            }

            continue;
        }

        LocalStateInfo& succ_info = state_infos_[succid];
        if (succ_info.status == NEW) {
            const uint8_t status = push(
                mdp,
                heuristic,
                succid,
                pers_succ_info,
                einfo.value_changed,
                einfo.unsolved_succs);

            if (status == ONSTACK) {
                succ_info.open(stack_.size());
                stack_.push_back(succid);
                return true;
            }

            succ_info.status = status;

            if (status == UNSOLVED) {
                einfo.unsolved_succs = true;
                einfo.dead = false;
            } else if (status == CLOSED) {
                einfo.dead = false;
            }

            if (GreedyExploration && einfo.unsolved_succs) {
                keep_expanding = false;
                break;
            }
        } else if (succ_info.status == ONSTACK) {
            sinfo.lowlink = std::min(sinfo.lowlink, succ_info.index);
        } else {
            einfo.unsolved_succs =
                einfo.unsolved_succs || succ_info.status == UNSOLVED;
            einfo.dead = einfo.dead && succ_info.status == CLOSED_DEAD;
        }
    } while (einfo.next_successor());

    return false;
}

template <typename State, typename Action, bool UseInterval>
uint8_t HeuristicDepthFirstSearch<State, Action, UseInterval>::push(
    MDP& mdp,
    Evaluator& heuristic,
    StateID stateid,
    StateInfo& sinfo,
    bool& parent_value_changed,
    bool& parent_unsolved_succss)
{
    using namespace internal;

    assert(!sinfo.is_solved());

    const bool is_tip_state = !sinfo.is_policy_initialized();

    if (ForwardUpdates || is_tip_state) {
        sinfo.set_policy_initialized();
        statistics_.forward_updates++;

        auto upd_info = this->bellman_policy_update(mdp, heuristic, stateid);
        const bool value_changed = upd_info.value_changed;
        const auto& transition = upd_info.greedy_transition;

        parent_value_changed = parent_value_changed || value_changed;

        if constexpr (UseInterval) {
            parent_value_changed = parent_value_changed ||
                                   !sinfo.value.bounds_approximately_equal();
        }

        if (!transition) {
            sinfo.set_solved();
            uint8_t closed = CLOSED;
            if (this->is_marked_dead_end(stateid)) {
                closed = CLOSED_DEAD;
            }

            return value_changed ? UNSOLVED : closed;
        }

        if ((!ExpandTipStates && is_tip_state) ||
            (CutoffInconsistent && value_changed)) {
            parent_unsolved_succss = true;

            return UNSOLVED;
        }

        auto& einfo =
            expansion_queue_.emplace_back(stateid, transition->successor_dist);
        einfo.value_changed = value_changed;
    } else {
        if (sinfo.is_dead_end()) {
            sinfo.set_solved();
            return CLOSED_DEAD;
        }

        const auto transition =
            this->bellman_policy_update(mdp, heuristic, stateid)
                .greedy_transition;
        assert(transition.has_value());
        expansion_queue_.emplace_back(stateid, transition->successor_dist);
    }

    return ONSTACK;
}

template <typename State, typename Action, bool UseInterval>
std::pair<bool, bool> HeuristicDepthFirstSearch<State, Action, UseInterval>::
    backtracking_value_iteration(
        MDP& mdp,
        Evaluator& heuristic,
        const std::ranges::input_range auto& range,
        utils::CountdownTimer& timer)
{
    bool ever_values_not_conv = false;
    bool ever_policy_not_conv = false;

    for (;;) {
        auto [value_changed, policy_changed] = vi_step(
            mdp,
            heuristic,
            range,
            timer,
            statistics_.backtracking_updates);

        ever_values_not_conv = ever_values_not_conv || value_changed;
        ever_policy_not_conv = ever_values_not_conv || policy_changed;

        if (!value_changed) break;
    }

    return std::make_pair(ever_values_not_conv, ever_policy_not_conv);
}

template <typename State, typename Action, bool UseInterval>
bool HeuristicDepthFirstSearch<State, Action, UseInterval>::value_iteration(
    MDP& mdp,
    Evaluator& heuristic,
    const std::ranges::input_range auto& range,
    utils::CountdownTimer& timer)
{
    ++statistics_.convergence_value_iterations;

    for (;;) {
        auto [value_changed, policy_changed] = vi_step(
            mdp,
            heuristic,
            range,
            timer,
            statistics_.convergence_updates);

        if (policy_changed) return false;
        if (!value_changed) break;
    }

    return true;
}

template <typename State, typename Action, bool UseInterval>
std::pair<bool, bool>
HeuristicDepthFirstSearch<State, Action, UseInterval>::vi_step(
    MDP& mdp,
    Evaluator& heuristic,
    const std::ranges::input_range auto& range,
    utils::CountdownTimer& timer,
    unsigned long long& stat_counter)
{
    bool values_not_conv = false;
    bool policy_not_conv = false;

    for (const StateID id : range) {
        timer.throw_if_expired();

        ++stat_counter;

        const auto result = this->bellman_policy_update(mdp, heuristic, id);
        values_not_conv = values_not_conv || result.value_changed;
        policy_not_conv = policy_not_conv || result.policy_changed;

        if constexpr (UseInterval) {
            const StateInfo& info = this->get_state_info(id);
            values_not_conv =
                values_not_conv || !info.value.bounds_approximately_equal();
        }
    }

    return std::make_pair(values_not_conv, policy_not_conv);
}

} // namespace heuristic_depth_first_search
} // namespace algorithms
} // namespace probfd