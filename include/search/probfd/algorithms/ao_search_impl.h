#ifndef GUARD_INCLUDE_PROBFD_ALGORITHMS_AO_SEARCH_H
#error "This file should only be included from ao_search.h"
#endif

#include <ostream>

#include "downward/utils/countdown_timer.h"

namespace probfd::algorithms::ao_search {

inline void Statistics::print(std::ostream& out) const
{
    out << "  Iterations: " << iterations << std::endl;
}

template <typename State, typename Action, typename StateInfo>
void AOBase<State, Action, StateInfo>::print_additional_statistics(
    std::ostream& out) const
{
    statistics_.print(out);
}

template <typename State, typename Action, typename StateInfo>
void AOBase<State, Action, StateInfo>::setup_custom_reports(
    param_type<State>,
    ProgressReport& progress)
{
    progress.register_print(
        [&](std::ostream& out) { out << "i=" << statistics_.iterations; });
}

template <typename State, typename Action, typename StateInfo>
void AOBase<State, Action, StateInfo>::backpropagate_tip_value(
    this auto& self,
    MDPType& mdp,
    EvaluatorType& heuristic,
    utils::CountdownTimer& timer)
{
    while (!self.queue_.empty()) {
        timer.throw_if_expired();

        auto elem = self.queue_.top();
        self.queue_.pop();

        auto& info = self.state_infos_[elem.state_id];
        assert(!info.is_goal_state());
        assert(!info.is_terminal() || info.is_solved());

        if (info.is_solved()) {
            // has been handled already
            continue;
        }

        assert(info.is_marked());
        info.unmark();

        bool value_changed =
            self.update_value_check_solved(mdp, heuristic, elem.state_id, info);

        if (info.is_solved() || value_changed) {
            self.push_parents_to_queue(info);
        }
    }
}

template <typename State, typename Action, typename StateInfo>
void AOBase<State, Action, StateInfo>::backpropagate_update_order(
    StateID tip,
    StateInfo& tip_info,
    unsigned update_order,
    utils::CountdownTimer& timer)
{
    tip_info.update_order = update_order;
    queue_.emplace(update_order, tip);

    do {
        timer.throw_if_expired();

        auto elem = queue_.top();
        queue_.pop();

        auto& info = this->state_infos_[elem.state_id];
        if (info.update_order > elem.update_order) {
            continue;
        }

        std::erase_if(info.get_parents(), [this, elem](StateID state_id) {
            auto& pinfo = this->state_infos_[state_id];
            if (pinfo.is_solved()) {
                return true;
            }

            if (pinfo.update_order <= elem.update_order) {
                pinfo.update_order = elem.update_order + 1;
                queue_.emplace(elem.update_order + 1, state_id);
            }

            return false;
        });
    } while (!queue_.empty());
}

template <typename State, typename Action, typename StateInfo>
void AOBase<State, Action, StateInfo>::push_parents_to_queue(StateInfo& info)
{
    auto& parents = info.get_parents();
    for (StateID parent : parents) {
        auto& pinfo = this->state_infos_[parent];
        assert(!pinfo.is_dead_end() || pinfo.is_solved());

        if constexpr (!StateInfo::StorePolicy) {
            if (info.is_solved()) {
                assert(pinfo.unsolved > 0 || pinfo.is_solved());
                --pinfo.unsolved;
            }
        }

        if (pinfo.is_unflagged()) {
            pinfo.mark();
            queue_.emplace(pinfo.update_order, parent);
        }
    }

    if (info.is_solved()) {
        utils::release_vector_memory(parents);
    }
}

} // namespace probfd::algorithms::ao_search
