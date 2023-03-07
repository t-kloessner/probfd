#include "probfd/heuristics/cartesian/probabilistic_transition_system.h"
#include "probfd/heuristics/cartesian/abstract_state.h"
#include "probfd/heuristics/cartesian/probabilistic_transition.h"

#include "probfd/task_utils/task_properties.h"

#include "utils/logging.h"

#include <algorithm>
#include <map>

using namespace std;

namespace probfd {
namespace heuristics {
namespace cartesian {

static vector<vector<FactPair>>
get_preconditions_by_operator(const ProbabilisticOperatorsProxy& ops)
{
    vector<vector<FactPair>> preconditions_by_operator;
    preconditions_by_operator.reserve(ops.size());
    for (auto op : ops) {
        vector<FactPair> preconditions =
            ::task_properties::get_fact_pairs(op.get_preconditions());
        sort(preconditions.begin(), preconditions.end());
        preconditions_by_operator.push_back(std::move(preconditions));
    }
    return preconditions_by_operator;
}

static vector<vector<FactPair>>
get_postconditions_per_outcome(const ProbabilisticOperatorProxy& op)
{
    vector<vector<FactPair>> postconditions;

    auto outcomes = op.get_outcomes();
    postconditions.reserve(outcomes.size());

    for (auto outcome : outcomes) {
        // Use map to obtain sorted postconditions.
        map<int, int> var_to_post;
        for (FactProxy fact : op.get_preconditions()) {
            var_to_post[fact.get_variable().get_id()] = fact.get_value();
        }
        for (auto effect : outcome.get_effects()) {
            FactPair fact = effect.get_fact().get_pair();
            var_to_post[fact.var] = fact.value;
        }
        vector<FactPair>& outcome_postconditions =
            postconditions.emplace_back();
        outcome_postconditions.reserve(var_to_post.size());
        for (const pair<const int, int>& fact : var_to_post) {
            outcome_postconditions.emplace_back(fact.first, fact.second);
        }
    }
    return postconditions;
}

static vector<vector<vector<FactPair>>>
get_postconditions_by_operator_and_outcome(
    const ProbabilisticOperatorsProxy& ops)
{
    vector<vector<vector<FactPair>>> postconditions;
    postconditions.reserve(ops.size());
    for (const ProbabilisticOperatorProxy op : ops) {
        postconditions.push_back(get_postconditions_per_outcome(op));
    }
    return postconditions;
}

static vector<vector<value_t>> get_probabilities_by_operator_and_outcome(
    const ProbabilisticOperatorsProxy& ops)
{
    vector<vector<value_t>> probabilities;
    probabilities.reserve(ops.size());
    for (const ProbabilisticOperatorProxy op : ops) {
        const auto outcomes = op.get_outcomes();
        auto& outcome_probabilities = probabilities.emplace_back();
        outcome_probabilities.reserve(outcomes.size());
        for (const ProbabilisticOutcomeProxy outcome : outcomes) {
            outcome_probabilities.push_back(outcome.get_probability());
        }
    }
    return probabilities;
}

static int lookup_value(const vector<FactPair>& facts, int var)
{
    assert(is_sorted(facts.begin(), facts.end()));
    for (const FactPair& fact : facts) {
        if (fact.var == var) {
            return fact.value;
        } else if (fact.var > var) {
            return UNDEFINED;
        }
    }
    return UNDEFINED;
}

ProbabilisticTransitionSystem::ProbabilisticTransitionSystem(
    const ProbabilisticOperatorsProxy& ops)
    : preconditions_by_operator(get_preconditions_by_operator(ops))
    , postconditions_by_operator_and_outcome(
          get_postconditions_by_operator_and_outcome(ops))
    , probabilities_by_operator_and_outcome(
          get_probabilities_by_operator_and_outcome(ops))
{
    construct_trivial_abstraction(ops);
}

int ProbabilisticTransitionSystem::get_precondition_value(int op_id, int var)
    const
{
    return lookup_value(preconditions_by_operator[op_id], var);
}

int ProbabilisticTransitionSystem::get_postcondition_value(
    int op_id,
    int eff_id,
    int var) const
{
    return lookup_value(
        postconditions_by_operator_and_outcome[op_id][eff_id],
        var);
}

void ProbabilisticTransitionSystem::enlarge_vectors_by_one()
{
    outgoing.emplace_back();
    incoming.emplace_back();
}

void ProbabilisticTransitionSystem::construct_trivial_abstraction(
    const ProbabilisticOperatorsProxy& ops)
{
    assert(get_num_states() == 0);
    enlarge_vectors_by_one();
    assert(get_num_states() == 1);

    for (const auto& op : ops) {
        const auto outcomes = op.get_outcomes().size();
        auto& t = transitions.emplace_back(
            0,
            op.get_id(),
            std::vector<int>(outcomes, 0));
        outgoing[0].push_back(&t);
        incoming[0].push_back(&t);
    }
}

void ProbabilisticTransitionSystem::add_transition(
    int src_id,
    int op_id,
    std::vector<int> target_ids)
{
    auto& transition =
        transitions.emplace_back(src_id, op_id, std::move(target_ids));
    outgoing[src_id].push_back(&transition);

    std::unordered_set<int> seen;
    for (int target_id : transition.target_ids) {
        if (seen.insert(target_id).second) {
            incoming[target_id].push_back(&transition);
        }
    }
}

void ProbabilisticTransitionSystem::rewire_incoming_transitions(
    const AbstractStates& states,
    const AbstractState& v1,
    const AbstractState& v2,
    int var)
{
    int v1_id = v1.get_id();
    int v2_id = v2.get_id();

    auto old_incoming = std::move(incoming[v1_id]);

    for (ProbabilisticTransition* transition : old_incoming) {
        assert(utils::contains(transition->target_ids, v1_id));

        const int u_id = transition->source_id;
        const AbstractState& u = *states[u_id];
        int op_id = transition->op_id;

        // Note: Targets are updated in-place to avoid having to remove the
        // transition from the vector only to re-add a rewired version later.
        // This would change the positions of other transitions in the vector
        // and invalidate the references in the incoming and outgoing
        // transitions lists.
        // If rewiring produces two transitions, then the second one is added as
        // a new transition, while the first one is an in-place update.
        std::vector<int>& target_ids = transition->target_ids;

        int pre = get_precondition_value(op_id, var);
        if (pre == UNDEFINED) {
            bool possibly_both = false;

            bool v1_possible = u.domain_subsets_intersect(v1, var);
            bool v2_possible = u.domain_subsets_intersect(v2, var);

            bool v1_incoming = false;
            bool v2_incoming = false;

            for (size_t i = 0; i != target_ids.size(); ++i) {
                const int v_id = target_ids[i];
                const int post = get_postcondition_value(op_id, i, var);

                if (v_id != v1_id) {
                    const AbstractState& v = *states[v_id];
                    if (post == UNDEFINED) {
                        v1_possible =
                            v1_possible && v.domain_subsets_intersect(v1, var);
                        v2_possible =
                            v2_possible && v.domain_subsets_intersect(v2, var);
                    }
                } else if (post == UNDEFINED) {
                    possibly_both = true;
                    target_ids[i] = UNDEFINED;
                } else if (v1.contains(var, post)) {
                    v1_incoming = true;
                    target_ids[i] = v1_id;
                } else {
                    assert(v2.contains(var, post));
                    v2_incoming = true;
                    target_ids[i] = v2_id;
                }
            }

            if (possibly_both) {
                if (v1_possible) {
                    v1_incoming = true;

                    if (v2_possible) {
                        // Add the new second transition to the transition list.
                        auto targets_copy = target_ids;
                        std::ranges::replace(targets_copy, UNDEFINED, v2_id);
                        add_transition(u_id, op_id, std::move(targets_copy));
                    }
                    std::ranges::replace(target_ids, UNDEFINED, v1_id);
                } else {
                    v2_incoming = true;
                    std::ranges::replace(target_ids, UNDEFINED, v2_id);
                }
            }

            if (v1_incoming) {
                // Transition is incoming for v1.
                incoming[v1_id].push_back(transition);
                assert(utils::contains(transition->target_ids, v1_id));
            }

            if (v2_incoming) {
                // Transition is incoming for v2.
                incoming[v2_id].push_back(transition);
                assert(utils::contains(transition->target_ids, v2_id));
            }
        } else {
            bool v1_possible = false;
            bool v2_possible = false;

            for (size_t i = 0; i != target_ids.size(); ++i) {
                const int v_id = target_ids[i];
                const int post = get_postcondition_value(op_id, i, var);

                if (v_id == v1_id) {
                    if (v1.contains(var, post)) {
                        v1_possible = true;
                        target_ids[i] = v1_id;
                    } else {
                        assert(v2.contains(var, post));
                        v2_possible = true;
                        target_ids[i] = v2_id;
                    }
                }
            }

            assert(v1_possible || v2_possible);

            if (v1_possible) {
                incoming[v1_id].push_back(transition);
            }

            if (v2_possible) {
                incoming[v2_id].push_back(transition);
            }
        }
    }
}

void ProbabilisticTransitionSystem::rewire_outgoing_transitions(
    const AbstractStates& states,
    const AbstractState& v1,
    const AbstractState& v2,
    int var)
{
    int v1_id = v1.get_id();
    int v2_id = v2.get_id();

    auto old_outgoing = std::move(outgoing[v1_id]);

    for (ProbabilisticTransition* transition : old_outgoing) {
        int op_id = transition->op_id;

        std::vector<int>& target_ids = transition->target_ids;

        int pre = get_precondition_value(op_id, var);

        if (pre == UNDEFINED) {
            bool v1_possible = true;
            bool v2_possible = true;

            for (size_t i = 0; i != target_ids.size(); ++i) {
                const int v_id = target_ids[i];
                const int post = get_postcondition_value(op_id, i, var);

                if (post == UNDEFINED) {
                    if (v_id == v1_id) {
                        v2_possible = false;
                        break;
                    } else if (v_id == v2_id) {
                        v1_possible = false;
                        break;
                    } else {
                        const AbstractState& v = *states[v_id];
                        v1_possible =
                            v1_possible && v.domain_subsets_intersect(v1, var);
                        v2_possible =
                            v2_possible && v.domain_subsets_intersect(v2, var);
                    }
                }
            }

            if (v1_possible) {
                // Transition is still outgoing for v1. Re-add it.
                outgoing[v1_id].push_back(transition);
                if (v2_possible) {
                    // Copy transition to v2.
                    add_transition(v2_id, op_id, target_ids);
                }
            } else {
                // Transition is now outgoing for v2.
                transition->source_id = v2_id;
                outgoing[v2_id].push_back(transition);
            }
        } else if (v1.contains(var, pre)) {
            // Transition is still outgoing for v1. Re-add it.
            outgoing[v1_id].push_back(transition);
        } else {
            assert(v2.contains(var, pre));

            // Transition is now outgoing for v2.
            transition->source_id = v2_id;
            outgoing[v2_id].push_back(transition);
        }
    }
}

void ProbabilisticTransitionSystem::rewire(
    const AbstractStates& states,
    const AbstractState& v1,
    const AbstractState& v2,
    int var)
{
    // Make space for new transitions.
    enlarge_vectors_by_one();

    // Remove old transitions and add new transitions.
    rewire_incoming_transitions(states, v1, v2, var);
    rewire_outgoing_transitions(states, v1, v2, var);
}

value_t
ProbabilisticTransitionSystem::get_probability(int op_index, int eff_index)
    const
{
    return probabilities_by_operator_and_outcome[op_index][eff_index];
}

const std::vector<std::vector<ProbabilisticTransition*>>&
ProbabilisticTransitionSystem::get_incoming_transitions() const
{
    return incoming;
}

const std::vector<std::vector<ProbabilisticTransition*>>&
ProbabilisticTransitionSystem::get_outgoing_transitions() const
{
    return outgoing;
}

const std::deque<ProbabilisticTransition>&
ProbabilisticTransitionSystem::get_transitions() const
{
    return transitions;
}

int ProbabilisticTransitionSystem::get_num_states() const
{
    assert(incoming.size() == outgoing.size());
    return outgoing.size();
}

int ProbabilisticTransitionSystem::get_num_operators() const
{
    return preconditions_by_operator.size();
}

int ProbabilisticTransitionSystem::get_num_transitions() const
{
    return transitions.size();
}

void ProbabilisticTransitionSystem::print_statistics(utils::LogProxy& log) const
{
    if (log.is_at_least_normal()) {
        log << "Transitions: " << transitions.size() << endl;
    }
}

} // namespace cartesian
} // namespace heuristics
} // namespace probfd