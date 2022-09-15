#ifndef MDPS_HEURISTIC_SEARCH_INTERFACEABLE_H
#define MDPS_HEURISTIC_SEARCH_INTERFACEABLE_H

#include "probfd/engine_interfaces/heuristic_search_connector.h"
#include "probfd/engine_interfaces/policy_picker.h"

#include "probfd/action_id_map.h"
#include "probfd/state_id_map.h"

#include "probfd/probabilistic_operator.h"

#include "global_state.h"

class GlobalState;

namespace probfd {

class HeuristicSearchInterfaceable {
public:
    virtual ~HeuristicSearchInterfaceable() = default;

    void initialize(
        engine_interfaces::HeuristicSearchConnector* connector,
        engine_interfaces::StateIDMap<GlobalState>* state_id_map,
        engine_interfaces::ActionIDMap<const ProbabilisticOperator*>*
            op_id_map);

    virtual void print_statistics(std::ostream&) const {}

protected:
    virtual void initialize() {}

    GlobalState lookup_state(const StateID& state_id) const;

    const ProbabilisticOperator*
    lookup_operator(const StateID& state_id, const ActionID& action_id) const;

    const engines::heuristic_search::StateFlags*
    lookup_state_flags(const StateID& state_id) const
    {
        return reinterpret_cast<const engines::heuristic_search::StateFlags*>(
            connector_->lookup(state_id));
    }

    const value_type::value_t& lookup_value(const StateID& state_id) const
    {
        return *reinterpret_cast<const value_type::value_t*>(
            connector_->lookup(state_id));
    }

    const value_utils::IntervalValue*
    lookup_dual_bounds(const StateID& state_id) const
    {
        return reinterpret_cast<const value_utils::IntervalValue*>(
            connector_->lookup(state_id));
    }

    ActionID lookup_policy(const StateID& state_id) const
    {
        return reinterpret_cast<const engines::heuristic_search::StatesPolicy<
            std::true_type>*>(connector_->lookup(state_id))
            ->get_policy();
    }

private:
    engine_interfaces::HeuristicSearchConnector* connector_ = nullptr;
    engine_interfaces::StateIDMap<GlobalState>* state_id_map_ = nullptr;
    engine_interfaces::ActionIDMap<const ProbabilisticOperator*>* op_id_map_ =
        nullptr;
};

} // namespace probfd

#endif // __HEURISTIC_SEARCH_INTERFACEABLE_H__