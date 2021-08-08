#include "engine_interfaces.h"

#include "../../../successor_generator.h"
#include "../../probabilistic_operator.h"
#include "qualitative_result_store.h"

#include "../../../pdbs/pattern_database.h"
#include "expected_cost/expcost_projection.h"

namespace probabilistic {

unsigned StateIDMap<pdbs::AbstractState>::size() const
{
    return seen.size();
}

StateIDMap<pdbs::AbstractState>::seen_iterator
StateIDMap<pdbs::AbstractState>::seen_begin() const
{
    return seen.cbegin();
}

StateIDMap<pdbs::AbstractState>::seen_iterator
StateIDMap<pdbs::AbstractState>::seen_end() const
{
    return seen.cend();
}

StateID
StateIDMap<pdbs::AbstractState>::get_state_id(const pdbs::AbstractState& state)
{
    seen.insert(state.id);
    return StateID(state.id);
}

pdbs::AbstractState
StateIDMap<pdbs::AbstractState>::get_state(const StateID& id)
{
    return pdbs::AbstractState(id);
}

ActionIDMap<const pdbs::AbstractOperator*>::ActionIDMap(
    const std::vector<pdbs::AbstractOperator>& ops)
    : ops_(ops)
{
}

ActionID ActionIDMap<const pdbs::AbstractOperator*>::get_action_id(
    const StateID&,
    const pdbs::AbstractOperator* op) const
{
    return op - (&ops_[0]);
}

const pdbs::AbstractOperator*
ActionIDMap<const pdbs::AbstractOperator*>::get_action(
    const StateID&,
    const ActionID& idx) const
{
    return (&ops_[0]) + idx;
}

ApplicableActionsGenerator<const pdbs::AbstractOperator*>::
    ApplicableActionsGenerator(
        StateIDMap<pdbs::AbstractState>& id_map,
        std::shared_ptr<pdbs::AbstractStateMapper> state_mapper,
        std::shared_ptr<successor_generator::SuccessorGenerator<
            const pdbs::AbstractOperator*>> aops_gen)
    : id_map_(id_map)
    , state_mapper_(state_mapper)
    , values_(state_mapper->get_pattern().size(), 0)
    , aops_gen_(aops_gen)
{
}

void ApplicableActionsGenerator<const pdbs::AbstractOperator*>::operator()(
    const StateID& sid,
    std::vector<const pdbs::AbstractOperator*>& aops)
{
    pdbs::AbstractState abstract_state = id_map_.get_state(sid);
    state_mapper_->to_values(abstract_state, values_);
    aops_gen_->generate_applicable_ops(values_, aops);
}

TransitionGenerator<const pdbs::AbstractOperator*>::TransitionGenerator(
    StateIDMap<pdbs::AbstractState>& id_map,
    std::shared_ptr<pdbs::AbstractStateMapper> state_mapper,
    std::shared_ptr<
        successor_generator::SuccessorGenerator<const pdbs::AbstractOperator*>>
        aops_gen)
    : id_map_(id_map)
    , state_mapper_(state_mapper)
    , values_(state_mapper->get_pattern().size(), 0)
    , aops_gen_(aops_gen)
{
}

void TransitionGenerator<const pdbs::AbstractOperator*>::operator()(
    const StateID& state,
    const pdbs::AbstractOperator* op,
    Distribution<StateID>& result)
{
    pdbs::AbstractState abstract_state = id_map_.get_state(state);
    for (auto it = op->outcomes.begin(); it != op->outcomes.end(); it++) {
        const pdbs::AbstractState succ = abstract_state + it->first;
        result.add(id_map_.get_state_id(succ), it->second);
    }
}

void TransitionGenerator<const pdbs::AbstractOperator*>::operator()(
    const StateID& state,
    std::vector<const pdbs::AbstractOperator*>& aops,
    std::vector<Distribution<StateID>>& result)
{
    pdbs::AbstractState abstract_state = id_map_.get_state(state);
    state_mapper_->to_values(abstract_state, values_);
    aops_gen_->generate_applicable_ops(values_, aops);
    result.resize(aops.size());
    for (int i = aops.size() - 1; i >= 0; --i) {
        const pdbs::AbstractOperator* op = aops[i];
        for (auto it = op->outcomes.begin(); it != op->outcomes.end(); it++) {
            const pdbs::AbstractState succ = abstract_state + it->first;
            result[i].add(id_map_.get_state_id(succ), it->second);
        }
    }
}

namespace pdbs {

AbstractStateDeadendStoreEvaluator::AbstractStateDeadendStoreEvaluator(
    const QualitativeResultStore* states,
    value_type::value_t value_in,
    value_type::value_t value_not_in)
    : states_(states)
    , value_in_(value_in)
    , value_not_in_(value_not_in)
{
}

EvaluationResult
AbstractStateDeadendStoreEvaluator::evaluate(const AbstractState& state)
{
    const bool is_contained = states_->get(state);
    return EvaluationResult(
        is_contained,
        is_contained ? value_in_ : value_not_in_);
}

AbstractStateInStoreRewardFunction::AbstractStateInStoreRewardFunction(
    const QualitativeResultStore* states,
    value_type::value_t value_in,
    value_type::value_t value_not_in)
    : states_(states)
    , value_in_(value_in)
    , value_not_in_(value_not_in)
{
}

EvaluationResult
AbstractStateInStoreRewardFunction::evaluate(const AbstractState& state)
{
    const bool is_contained = states_->get(state);
    return EvaluationResult(
        is_contained,
        is_contained ? value_in_ : value_not_in_);
}

AbstractStateInSetRewardFunction::AbstractStateInSetRewardFunction(
    const std::unordered_set<AbstractState>* states_,
    value_type::value_t value_in,
    value_type::value_t value_not_in)
    : states_(states_)
    , value_in_(value_in)
    , value_not_in_(value_not_in)
{
}

EvaluationResult
AbstractStateInSetRewardFunction::evaluate(const AbstractState& state)
{
    const bool is_contained = states_->find(state) != states_->end();
    return EvaluationResult(
        is_contained,
        is_contained ? value_in_ : value_not_in_);
}

PDBEvaluator::PDBEvaluator(const ::pdbs::PatternDatabase& pdb)
    : pdb(pdb)
{
}

EvaluationResult PDBEvaluator::evaluate(const AbstractState& state)
{
    int deterministic_val = pdb.get_value_for_index(state.id);

    return EvaluationResult(
        deterministic_val == std::numeric_limits<int>::max(),
        static_cast<value_type::value_t>(deterministic_val));
}

ExpCostPDBEvaluator::ExpCostPDBEvaluator(
    const expected_cost::ExpCostProjection& pdb,
    const AbstractStateMapper* mapper,
    int add_var)
    : pdb(pdb)
    , mapper(mapper)
{
    const int idx = mapper->get_index(add_var);

    this->domain_size = mapper->get_domain_size_raw(idx);
    this->left_multiplier = mapper->get_multiplier_raw(idx);
    this->right_multiplier = mapper->get_multiplier_raw(idx + 1);
}

EvaluationResult ExpCostPDBEvaluator::evaluate(const AbstractState& state)
{
    value_type::value_t val = pdb.lookup(to_parent_state(state));
    return EvaluationResult(val == -value_type::inf, val);
}

AbstractState ExpCostPDBEvaluator::to_parent_state(AbstractState state)
{
    int left = state.id % left_multiplier;
    int right = state.id - (state.id % right_multiplier);
    return AbstractState(left + right / domain_size);
}

value_type::value_t
ZeroCostActionEvaluator::evaluate(StateID, const AbstractOperator*)
{
    return 0;
}

value_type::value_t
UnitCostActionEvaluator::evaluate(StateID, const AbstractOperator*)
{
    return -1;
}

value_type::value_t
NormalCostActionEvaluator::evaluate(StateID, const AbstractOperator* op)
{
    return -op->cost;
}

} // namespace pdbs
} // namespace probabilistic
