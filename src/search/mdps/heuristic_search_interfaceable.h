#pragma once

#include "engine_interfaces/action_id_map.h"
#include "engine_interfaces/heuristic_search_connector.h"
#include "engine_interfaces/policy_picker.h"
#include "engine_interfaces/state_id_map.h"
#include "probabilistic_operator.h"

class GlobalState;

namespace probabilistic {

class HeuristicSearchInterfaceable {
public:
    virtual ~HeuristicSearchInterfaceable() = default;

    void initialize(
        HeuristicSearchConnector* connector,
        StateIDMap<GlobalState>* state_id_map,
        ActionIDMap<const ProbabilisticOperator*>* op_id_map);

    virtual void print_statistics(std::ostream&) const { }

protected:
    virtual void initialize() { }

    GlobalState lookup_state(const StateID& state_id) const;

    const ProbabilisticOperator*
    lookup_operator(const StateID& state_id, const ActionID& action_id) const;

    const heuristic_search::StateFlags*
    lookup_state_flags(const StateID& state_id) const
    {
        return reinterpret_cast<const heuristic_search::StateFlags*>(
            connector_->lookup(state_id));
    }

    const value_type::value_t& lookup_value(const StateID& state_id) const
    {
        return reinterpret_cast<const heuristic_search::StatesValue*>(
                   connector_->lookup(state_id))
            ->get_value();
    }

    const heuristic_search::StatesValues<std::true_type>*
    lookup_dual_bounds(const StateID& state_id) const
    {
        return reinterpret_cast<
            const heuristic_search::StatesValues<std::true_type>*>(
            connector_->lookup(state_id));
    }

    ActionID lookup_policy(const StateID& state_id) const
    {
        return reinterpret_cast<
                   const heuristic_search::StatesPolicy<std::true_type>*>(
                   connector_->lookup(state_id))
            ->get_policy();
    }

private:
    HeuristicSearchConnector* connector_ = nullptr;
    StateIDMap<GlobalState>* state_id_map_ = nullptr;
    ActionIDMap<const ProbabilisticOperator*>* op_id_map_ = nullptr;
};

} // namespace probabilistic
