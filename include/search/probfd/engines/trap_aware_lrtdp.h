#ifndef PROBFD_ENGINES_TRAP_AWARE_LRTDP_H
#define PROBFD_ENGINES_TRAP_AWARE_LRTDP_H

#include "probfd/engine_interfaces/transition_sampler.h"
#include "probfd/engines/heuristic_search_base.h"
#include "probfd/quotients/quotient_system.h"
#include "probfd/storage/per_state_storage.h"

#include "utils/timer.h"

#include <iostream>

namespace probfd {
namespace engines {

/// Namespace dedicated to labelled real-time dynamic programming (LRTDP) with
/// native trap handling support.
namespace trap_aware_lrtdp {

enum class TrialTerminationCondition {
    TERMINAL,
    CONSISTENT,
    INCONSISTENT,
    REVISITED,
};

namespace internal {

struct Statistics {
    unsigned long long trials = 0;
    unsigned long long trial_bellman_backups = 0;
    unsigned long long check_and_solve_bellman_backups = 0;
    unsigned long long traps = 0;
    unsigned long long trial_length = 0;
    utils::Timer trap_timer = utils::Timer(true);

    void print(std::ostream& out) const
    {
        out << "  Trials: " << trials << std::endl;
        out << "  Average trial length: " << ((double)trial_length / trials)
            << std::endl;
        out << "  Bellman backups (trials): " << trial_bellman_backups
            << std::endl;
        out << "  Bellman backups (check&solved): "
            << check_and_solve_bellman_backups << std::endl;
        out << "  Trap removals: " << traps << std::endl;
        out << "  Trap removal time: " << trap_timer << std::endl;
    }

    void register_report(ProgressReport* report) const
    {
        report->register_print([this](std::ostream& out) {
            out << "traps=" << traps << ", trials=" << trials;
        });
    }
};

template <typename StateInfo>
struct PerStateInformation : public StateInfo {
    static constexpr uint8_t MARKED_TRIAL = (1 << StateInfo::BITS);
    static constexpr uint8_t SOLVED = (2 << StateInfo::BITS);
    static constexpr uint8_t BITS = StateInfo::BITS + 2;
    static constexpr uint8_t MASK = (3 << StateInfo::BITS);

    bool is_solved() const { return (this->info & MASK) == SOLVED; }
    void set_solved() { this->info = (this->info & ~MASK) | SOLVED; }
    bool is_on_trial() const { return (this->info & MARKED_TRIAL); }
    void set_on_trial() { this->info = this->info | MARKED_TRIAL; }
    void clear_trial_flag() { this->info = (this->info & ~MARKED_TRIAL); }
};

} // namespace internal

template <typename State, typename Action, bool UseInterval>
class TALRTDP;

template <typename State, typename Action, bool UseInterval>
class TALRTDP<State, quotients::QuotientAction<Action>, UseInterval>
    : public heuristic_search::HeuristicSearchBase<
          State,
          quotients::QuotientAction<Action>,
          UseInterval,
          true,
          internal::PerStateInformation> {
    using HeuristicSearchBase = heuristic_search::HeuristicSearchBase<
        State,
        quotients::QuotientAction<Action>,
        UseInterval,
        true,
        internal::PerStateInformation>;

    using QAction = quotients::QuotientAction<Action>;
    using QuotientSystem = quotients::QuotientSystem<State, Action>;
    using StateInfo = typename HeuristicSearchBase::StateInfo;

    struct Flags {
        bool is_dead = true;
        bool is_trap = true;
        bool rv = true;

        void clear()
        {
            is_dead = true;
            is_trap = true;
            rv = true;
        }

        void update(const Flags& flags)
        {
            is_trap = is_trap && flags.is_trap;
            is_dead = is_dead && flags.is_dead;
            rv = rv && flags.rv;
        }

        void update(const StateInfo& succ_info)
        {
            is_trap = false;
            is_dead = is_dead && succ_info.is_dead_end();
            rv = rv && succ_info.is_solved();
        }
    };

    struct ExplorationInformation {
        explicit ExplorationInformation(StateID state_id)
            : state(state_id)
        {
        }

        StateID state;
        std::vector<StateID> successors;
        bool is_root = true;
        Flags flags;
    };

    static constexpr int STATE_UNSEEN = -1;
    static constexpr int STATE_CLOSED = -2;

    QuotientSystem* quotient_;

    const TrialTerminationCondition stop_at_consistent_;
    const bool reexpand_traps_;

    engine_interfaces::TransitionSampler<QAction>* sample_;

    Distribution<StateID> selected_transition_;

    std::deque<StateID> current_trial_;

    std::deque<ExplorationInformation> queue_;
    std::deque<StateID> stack_;
    storage::StateHashMap<int> stack_index_;

    internal::Statistics statistics_;

public:
    /**
     * @brief Constructs a trap-aware LRTDP solver object.
     */
    TALRTDP(
        engine_interfaces::StateSpace<State, QAction>* state_space,
        engine_interfaces::CostFunction<State, QAction>* cost_function,
        engine_interfaces::Evaluator<State>* value_init,
        engine_interfaces::PolicyPicker<State, QAction>* policy_chooser,
        engine_interfaces::NewStateHandler<State>* new_state_handler,
        ProgressReport* report,
        bool interval_comparison,
        QuotientSystem* quotient,
        TrialTerminationCondition stop_consistent,
        bool reexpand_traps,
        engine_interfaces::TransitionSampler<QAction>* succ_sampler)
        : HeuristicSearchBase(
              state_space,
              cost_function,
              value_init,
              policy_chooser,
              new_state_handler,
              report,
              interval_comparison)
        , quotient_(quotient)
        , stop_at_consistent_(stop_consistent)
        , reexpand_traps_(reexpand_traps)
        , sample_(succ_sampler)
        , stack_index_(STATE_UNSEEN)
    {
    }

protected:
    Interval do_solve(const State& s) override
    {
        const StateID state_id = this->get_state_id(s);
        bool terminate = false;
        do {
            terminate = trial(state_id);
            statistics_.trials++;
            assert(state_id == quotient_->translate_state_id(state_id));
            this->print_progress();
        } while (!terminate);

        return this->lookup_dual_bounds(state_id);
    }

    void print_additional_statistics(std::ostream& out) const override
    {
        statistics_.print(out);
    }

    void setup_custom_reports(const State&) override
    {
        this->statistics_.register_report(this->report_);
    }

private:
    bool trial(StateID start_state)
    {
        using enum TrialTerminationCondition;

        assert(current_trial_.empty());
        assert(selected_transition_.empty());

        current_trial_.push_back(start_state);
        for (;;) {
            StateID stateid = current_trial_.back();
            auto& info = this->get_state_info(stateid);
            if (info.is_solved()) {
                current_trial_.pop_back();
                break;
            }

            statistics_.trial_bellman_backups++;
            const bool changed =
                this->async_update(stateid, &selected_transition_)
                    .value_changed;

            if (selected_transition_.empty()) {
                info.set_solved();
                current_trial_.pop_back();
                break;
            }

            if ((stop_at_consistent_ == CONSISTENT && !changed) ||
                (stop_at_consistent_ == INCONSISTENT && changed) ||
                (stop_at_consistent_ == REVISITED && info.is_on_trial())) {
                selected_transition_.clear();
                break;
            }

            if (stop_at_consistent_ == REVISITED) {
                info.set_on_trial();
            }

            current_trial_.push_back(sample_->sample(
                stateid,
                this->get_policy(stateid),
                selected_transition_,
                *this));
            selected_transition_.clear();
        }

        statistics_.trial_length += current_trial_.size();
        if (stop_at_consistent_ == REVISITED) {
            for (const StateID state : current_trial_) {
                auto& info = this->get_state_info(state);
                assert(info.is_on_trial());
                info.clear_trial_flag();
            }
        }

        bool terminate = true;
        while (!current_trial_.empty()) {
            if (!check_and_solve()) {
                terminate = false;
                break;
            }
            current_trial_.pop_back();
        }

        current_trial_.clear();
        return terminate;
    }

    bool check_and_solve()
    {
        assert(!this->current_trial_.empty());

        Flags flags;
        {
            const StateID s =
                quotient_->translate_state_id(this->current_trial_.back());
            if (this->get_state_info(s).is_solved()) {
                // was labeled in some prior check_and_solve() invocation
                return true;
            }
            if (!push_to_queue(s, flags)) {
                stack_index_.clear();
                return flags.rv;
            }
        }

        do {
            ExplorationInformation& einfo = queue_.back();
            einfo.flags.update(flags);
            bool backtrack = true;
            while (!einfo.successors.empty()) {
                const StateID succ =
                    quotient_->translate_state_id(einfo.successors.back());
                StateInfo& succ_info = this->get_state_info(succ);
                int& sidx = stack_index_[succ];
                if (sidx == STATE_UNSEEN) {
                    if (succ_info.is_terminal()) {
                        succ_info.set_solved();
                    }
                    if (succ_info.is_solved()) {
                        einfo.flags.update(succ_info);
                    } else if (push_to_queue(succ, einfo.flags)) {
                        flags.clear();
                        backtrack = false;
                        break;
                    }
                    // don't touch this state again within this check_and_solve
                    // iteration
                    sidx = STATE_CLOSED;
                } else if (sidx >= 0) {
                    int& sidx2 = stack_index_[einfo.state];
                    if (sidx < sidx2) {
                        sidx2 = sidx;
                        einfo.is_root = false;
                    }
                } else {
                    einfo.flags.update(succ_info);
                }
                einfo.successors.pop_back();
            }

            if (backtrack) {
                if (einfo.is_root) {
                    const unsigned stack_index = stack_index_[einfo.state];
                    const unsigned scc_size = stack_.size() - stack_index;
                    if (scc_size == 1) {
                        assert(stack_.front() == einfo.state);
                        stack_index_[einfo.state] = STATE_CLOSED;
                        stack_.pop_front();
                        if (!einfo.flags.rv) {
                            ++this->statistics_.check_and_solve_bellman_backups;
                            this->async_update(einfo.state);
                        } else {
                            StateInfo& info = this->get_state_info(einfo.state);
                            info.set_solved();
                        }
                    } else {
                        auto scc_end = std::next(stack_.begin(), scc_size);
                        if (einfo.flags.is_trap) {
                            assert(einfo.flags.rv);
                            StateID minstate = einfo.state;
                            for (auto it = stack_.begin(); it != scc_end;
                                 ++it) {
                                stack_index_[*it] = STATE_CLOSED;
                                if (*it < minstate) {
                                    minstate = *it;
                                }
                            }
                            utils::TimerScope scope(statistics_.trap_timer);
                            quotient_->build_quotient(
                                stack_.begin(),
                                scc_end,
                                minstate);
                            this->get_state_info(minstate).set_policy(
                                ActionID::undefined);
                            ++this->statistics_.traps;
                            ++this->statistics_.check_and_solve_bellman_backups;
                            stack_.erase(stack_.begin(), scc_end);
                            if (reexpand_traps_) {
                                queue_.pop_back();
                                flags.clear();
                                if (!push_to_queue(minstate, flags)) {
                                    flags.is_trap = false;
                                }
                                continue;
                            } else {
                                this->async_update(minstate);
                                einfo.flags.rv = false;
                            }
                        } else if (einfo.flags.rv) {
                            for (auto it = stack_.begin(); it != scc_end;
                                 ++it) {
                                stack_index_[*it] = STATE_CLOSED;
                                this->get_state_info(*it).set_solved();
                            }
                            stack_.erase(stack_.begin(), scc_end);
                        } else {
                            for (auto it = stack_.begin(); it != scc_end;
                                 ++it) {
                                stack_index_[*it] = STATE_CLOSED;
                                this->async_update(*it);
                            }
                            stack_.erase(stack_.begin(), scc_end);
                        }
                    }
                    einfo.flags.is_trap = false;
                }
                flags = einfo.flags;
                queue_.pop_back();
            }
        } while (!queue_.empty());

        assert(queue_.empty());
        assert(stack_.empty());

        stack_index_.clear();
        return this->get_state_info(this->current_trial_.back()).is_solved();
    }

    bool push_to_queue(const StateID state, Flags& parent_flags)
    {
        assert(this->quotient_->translate_state_id(state) == state);
        assert(this->selected_transition_.empty());

        ++this->statistics_.check_and_solve_bellman_backups;

        const auto result =
            this->async_update(state, &this->selected_transition_);

        if (this->selected_transition_.empty()) {
            assert(this->get_state_info(state).is_dead_end());
            parent_flags.rv = parent_flags.rv && !result.value_changed;
            parent_flags.is_trap = false;
            return false;
        }

        if (result.value_changed) {
            parent_flags.rv = false;
            parent_flags.is_trap = false;
            parent_flags.is_dead = false;
            this->selected_transition_.clear();
            return false;
        }

        queue_.emplace_back(state);
        ExplorationInformation& e = queue_.back();
        for (const StateID sel : this->selected_transition_.support()) {
            if (sel != state) {
                e.successors.push_back(sel);
            }
        }

        assert(!e.successors.empty());
        this->selected_transition_.clear();
        e.flags.is_trap =
            this->get_action_cost(state, *result.policy_action) == 0;
        stack_index_[state] = stack_.size();
        stack_.push_front(state);
        return true;
    }
};

template <typename State, typename Action, bool UseInterval>
class TALRTDP : public engines::MDPEngineInterface<State, Action> {
    using QAction = quotients::QuotientAction<Action>;

    TALRTDP<State, QAction, UseInterval> engine_;

public:
    /**
     * @brief Constructs a trap-aware LRTDP solver object.
     */
    TALRTDP(
        engine_interfaces::StateSpace<State, QAction>* state_space,
        engine_interfaces::CostFunction<State, QAction>* cost_function,
        engine_interfaces::Evaluator<State>* value_init,
        engine_interfaces::PolicyPicker<State, QAction>* policy_chooser,
        engine_interfaces::NewStateHandler<State>* new_state_handler,
        ProgressReport* report,
        bool interval_comparison,
        quotients::QuotientSystem<State, Action>* quotient,
        TrialTerminationCondition stop_consistent,
        bool reexpand_traps,
        engine_interfaces::TransitionSampler<QAction>* succ_sampler)
        : engine_(
              state_space,
              cost_function,
              value_init,
              policy_chooser,
              new_state_handler,
              report,
              interval_comparison,
              quotient,
              stop_consistent,
              reexpand_traps,
              succ_sampler)
    {
    }

    Interval solve(const State& s, double max_time) override
    {
        return engine_.solve(s, max_time);
    }

    void print_statistics(std::ostream& out) const override
    {
        return engine_.print_statistics(out);
    }
};

} // namespace trap_aware_lrtdp
} // namespace engines
} // namespace probfd

#endif // __TRAP_AWARE_LRTDP_H__
