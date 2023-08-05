#include "probfd/policy_pickers/operator_id_tiebreaker.h"

#include "downward/operator_id.h"

#include "downward/plugins/options.h"

#include <limits>

namespace probfd {
namespace policy_pickers {

OperatorIdTiebreaker::OperatorIdTiebreaker(const plugins::Options& opts)
    : OperatorIdTiebreaker(
          opts.get<bool>("stable_policy"),
          opts.get<bool>("prefer_smaller") ? 1 : -1)
{
}

OperatorIdTiebreaker::OperatorIdTiebreaker(bool stable_policy, int ascending)
    : TaskStablePolicyPicker<OperatorIdTiebreaker>(stable_policy)
    , ascending_(ascending)
{
}

int OperatorIdTiebreaker::pick_index(
    TaskMDP&,
    StateID,
    std::optional<OperatorID>,
    const std::vector<Transition<OperatorID>>& greedy_transitions,
    engine_interfaces::StateProperties&)
{
    int min_id = std::numeric_limits<int>::max();
    unsigned min_idx = -1;
    for (int i = greedy_transitions.size() - 1; i >= 0; i--) {
        int id = greedy_transitions[i].action.get_index() * ascending_;
        if (id < min_id) {
            min_id = id;
            min_idx = i;
        }
    }
    return min_idx;
}

} // namespace policy_pickers
} // namespace probfd
