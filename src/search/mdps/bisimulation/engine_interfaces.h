#ifndef __ENGINE_INTERFACES_H__
#define __ENGINE_INTERFACES_H__

#include "../engine_interfaces/state_id_map.h"
#include "../engine_interfaces/action_id_map.h"
#include "../engine_interfaces/applicable_actions_generator.h"
#include "../engine_interfaces/transition_generator.h"
#include "../engine_interfaces/state_reward_function.h"
#include "../engine_interfaces/action_evaluator.h"
#include "../engine_interfaces/state_evaluator.h"

#include "bisimilar_state_space.h"

namespace probabilistic {

template<>
struct StateIDMap<bisimulation::QuotientState> {
    StateID get_state_id(const bisimulation::QuotientState& state) const;
    bisimulation::QuotientState get_state(const StateID& state_id) const;
};

template<>
struct ActionIDMap<bisimulation::QuotientAction> {
    ActionID get_action_id(
        const StateID& state_id,
        const bisimulation::QuotientAction& action) const;
    bisimulation::QuotientAction
    get_action(const StateID& state_id, const ActionID& action) const;
};

template<>
struct ApplicableActionsGenerator<bisimulation::QuotientAction> {
    explicit ApplicableActionsGenerator(
        bisimulation::BisimilarStateSpace* bisim);
    void operator()(
        const StateID& state,
        std::vector<bisimulation::QuotientAction>& result) const;
    bisimulation::BisimilarStateSpace* bisim_;
};

template<>
struct TransitionGenerator<bisimulation::QuotientAction> {
    explicit TransitionGenerator(bisimulation::BisimilarStateSpace* bisim);
    void operator()(
        const StateID& state,
        const bisimulation::QuotientAction& action,
        Distribution<StateID>& result) const;
    void operator()(
        const StateID& state,
        std::vector<bisimulation::QuotientAction>& aops,
        std::vector<Distribution<StateID>>& result) const;
    bisimulation::BisimilarStateSpace* bisim_;
};

namespace bisimulation {

using QuotientStateRewardFunction = StateRewardFunction<bisimulation::QuotientState>;
using QuotientActionRewardFunction = ActionRewardFunction<bisimulation::QuotientAction>;
using QuotientStateEvaluator = StateEvaluator<bisimulation::QuotientState>;

struct DefaultQuotientStateEvaluator
    : public QuotientStateEvaluator
{
    explicit DefaultQuotientStateEvaluator(
        bisimulation::BisimilarStateSpace* bisim,
        const value_type::value_t min,
        const value_type::value_t max,
        value_type::value_t default_value = 0);

    EvaluationResult
    evaluate(const bisimulation::QuotientState& state) override;

    bisimulation::BisimilarStateSpace* bisim_;
    const value_type::value_t min_;
    const value_type::value_t max_;
    const value_type::value_t default_;
};

struct DefaultQuotientStateRewardFunction
    : public QuotientStateRewardFunction
{
    explicit DefaultQuotientStateRewardFunction(
        bisimulation::BisimilarStateSpace* bisim,
        const value_type::value_t min,
        const value_type::value_t max,
        value_type::value_t default_value = 0);

    EvaluationResult
    evaluate(const bisimulation::QuotientState& state) override;

    bisimulation::BisimilarStateSpace* bisim_;
    const value_type::value_t min_;
    const value_type::value_t max_;
    const value_type::value_t default_;
};

struct DefaultQuotientActionRewardFunction
    : public QuotientActionRewardFunction
{
    value_type::value_t
    evaluate(StateID state, bisimulation::QuotientAction action) override;
};

}
}

#endif // __ENGINE_INTERFACES_H__