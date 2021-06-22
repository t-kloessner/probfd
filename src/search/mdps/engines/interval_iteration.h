#pragma once

#include "../end_components/end_component_decomposition.h"
#include "../quotient_system/engine_interfaces.h"
#include "../quotient_system/quotient_system.h"
#include "../storage/per_state_storage.h"
#include "engine.h"
#include "topological_value_iteration.h"

namespace probabilistic {
namespace engines {
namespace interval_iteration {

using ValueStore = topological_vi::ValueStore<std::true_type>;
using BoolStore = storage::PerStateStorage<bool>;

template<typename State, typename Action, bool ExpandGoalStates = false>
class IntervalIteration : public MDPEngine<State, Action> {
public:
    using Decomposer = end_components::
        EndComponentDecomposition<State, Action, ExpandGoalStates>;
    using QuotientSystem = typename Decomposer::QuotientSystem;
    using QAction = typename QuotientSystem::QAction;
    using BoolStore = interval_iteration::BoolStore;

    using ValueIteration = topological_vi::TopologicalValueIteration<
        State,
        QAction,
        ExpandGoalStates,
        std::true_type,
        BoolStore>;

    explicit IntervalIteration(
        StateIDMap<State>* state_id_map,
        ActionIDMap<Action>* action_id_map,
        StateRewardFunction<State>* state_reward_function,
        ActionRewardFunction<Action>* action_reward_function,
        value_type::value_t minimal_reward,
        value_type::value_t maximal_reward,
        ApplicableActionsGenerator<Action>* aops_generator,
        TransitionGenerator<Action>* transition_generator,
        StateEvaluator<State>* prune,
        bool extract_probability_one_states)
        : MDPEngine<State, Action>(
            state_id_map,
            action_id_map,
            state_reward_function,
            action_reward_function,
            minimal_reward,
            maximal_reward,
            aops_generator,
            transition_generator)
        , lb_(this->get_minimal_reward())
        , ub_(this->get_maximal_reward())
        , prune_(prune)
        , extract_probability_one_states_(extract_probability_one_states)
        , probability_one_state_reward_(ub_)
    {
    }

    virtual void solve(const State& state) override
    {
        BoolStore dead(false);
        BoolStore one(false);
        QuotientSystem* sys;
        this->mysolve(state, value_store_, dead, one, sys);
        delete (sys);
    }

    virtual value_type::value_t get_result(const State& s) override
    {
        const StateID state_id = this->get_state_id(s);
        return value_utils::as_upper_bound(value_store_[state_id]);
    }

    virtual bool supports_error_bound() const override { return true; }

    virtual value_type::value_t get_error(const State& s) override
    {
        const StateID state_id = this->get_state_id(s);
        return value_store_[state_id].error_bound();
    }

    virtual void print_statistics(std::ostream& out) const override
    {
        tvi_statistics_.print(out);
        ecd_statistics_.print(out);
    }

    template <typename ValueStore>
    value_type::value_t solve(
        const State& state,
        ValueStore& value_store,
        BoolStore& dead_ends,
        BoolStore& one_states)
    {
        QuotientSystem* sys;
        value_type::value_t x =
            this->mysolve(state, value_store, dead_ends, one_states, sys);
        for (StateID repr_id : *sys) {
            auto [sit, send] = sys->quotient_iterator(repr_id);
            const StateID repr = *sit;

            const auto value = value_store[repr];
            const bool dead = dead_ends[repr];
            const bool one = one_states[repr];
            for (++sit; sit != send; ++sit) {
                value_store[*sit] = value;
                dead_ends[*sit] = dead;
                one_states[*sit] = one;
            }
        }
        delete (sys);
        return x;
    }

private:
    struct DeadEndPruner : public StateEvaluator<State> {
        DeadEndPruner(
            StateIDMap<State>* state_id_map,
            BoolStore* dead_ends,
            value_type::value_t lb,
            value_type::value_t ub)
           : state_id_map_(state_id_map)
           , dead_ends_(dead_ends)
           , lb(lb)
           , ub(ub)
        {
        }

        EvaluationResult evaluate(const State& s) override
        {
            if (dead_ends_) {
                const StateID id = state_id_map_->get_state_id(s);
                if (dead_ends_->operator[](id)) {
                    return EvaluationResult(true, lb);
                }
            }

            return EvaluationResult(false, ub);
        }

        StateIDMap<State>* state_id_map_;
        BoolStore* dead_ends_;
        value_type::value_t lb;
        value_type::value_t ub;
    };

    template <typename ValueStore>
    value_type::value_t mysolve(
        const State& state,
        ValueStore& value_store,
        BoolStore& dead_ends,
        BoolStore& one_states,
        QuotientSystem*& sys)
    {
        Decomposer ec_decomposer(
            prune_,
            this->get_action_id_map(),
            this->get_state_id_map(),
            this->get_state_reward_function(),
            this->get_applicable_actions_generator(),
            this->get_transition_generator());
        if (extract_probability_one_states_) {
            sys = ec_decomposer
                      .template build_quotient_system<BoolStore&, BoolStore&>(
                          state, dead_ends, one_states);
        } else {
            sys = ec_decomposer.template build_quotient_system<BoolStore&>(
                state, dead_ends);
        }
        ecd_statistics_ = ec_decomposer.get_statistics();
        ApplicableActionsGenerator<QAction> q_aops_gen(sys);
        TransitionGenerator<QAction> q_transition_gen(sys);
        quotient_system::DefaultQuotientActionRewardFunction<Action>
            q_action_reward(sys, this->get_action_reward_function());
        ActionIDMap<QAction> q_action_id_map(sys);
        DeadEndPruner prune(this->get_state_id_map(), &dead_ends, lb_, ub_);

        ValueIteration vi(
            this->get_state_id_map(),
            &q_action_id_map,
            this->get_state_reward_function(),
            &q_action_reward,
            lb_,
            ub_,
            &q_aops_gen,
            &q_transition_gen,
            &prune,
            extract_probability_one_states_ ? &one_states : nullptr);
        
        value_type::value_t result = vi.solve(state, value_store);
        tvi_statistics_ = vi.get_statistics();
        return result;
    }

    const value_type::value_t lb_;
    const value_type::value_t ub_;
    StateEvaluator<State>* prune_;
    const bool extract_probability_one_states_;
    const value_type::value_t probability_one_state_reward_;

    end_components::Statistics ecd_statistics_;
    topological_vi::Statistics tvi_statistics_;

    ValueStore value_store_;
};

} // namespace interval_iteration
} // namespace engines
} // namespace probabilistic
