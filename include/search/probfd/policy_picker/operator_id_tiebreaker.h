#ifndef MDPS_POLICY_PICKER_OPERATOR_ID_TIEBREAKER_H
#define MDPS_POLICY_PICKER_OPERATOR_ID_TIEBREAKER_H

#include "probfd/engine_interfaces/policy_picker.h"

namespace probfd {
namespace policy_tiebreaking {

class OperatorIdTiebreaker : public TaskPolicyPicker {
    const int ascending_;

public:
    explicit OperatorIdTiebreaker(int ascending);

protected:
    virtual int pick(
        const StateID& state,
        const ActionID& prev_policy,
        const std::vector<OperatorID>& action_choices,
        const std::vector<Distribution<StateID>>& successors,
        engine_interfaces::HeuristicSearchInterface& hs_interface) override;
};

} // namespace policy_tiebreaking
} // namespace probfd

#endif // __OPERATOR_ID_TIEBREAKER_H__