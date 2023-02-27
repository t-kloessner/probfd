#include "probfd/heuristics/cartesian/cegar.h"

#include "probfd/heuristics/cartesian/abstraction.h"
#include "probfd/heuristics/cartesian/probabilistic_transition_system.h"
#include "probfd/heuristics/cartesian/types.h"
#include "probfd/heuristics/cartesian/utils.h"

#include "probfd/task_utils/task_properties.h"

#include "probfd/policy.h"

#include "cegar/abstract_state.h"
#include "cegar/cartesian_set.h"
#include "cegar/utils.h"

#include "utils/logging.h"
#include "utils/math.h"
#include "utils/memory.h"

#include <algorithm>
#include <cassert>
#include <iostream>
#include <unordered_map>

using namespace std;

namespace probfd {
namespace heuristics {
namespace cartesian {

// Create the Cartesian set that corresponds to the given preconditions or
// goals.
template <typename ConditionsProxy>
static CartesianSet get_cartesian_set(
    const vector<int>& domain_sizes,
    const ConditionsProxy& conditions)
{
    CartesianSet cartesian_set(domain_sizes);
    for (FactProxy condition : conditions) {
        cartesian_set.set_single_value(
            condition.get_variable().get_id(),
            condition.get_value());
    }
    return cartesian_set;
}

struct CEGAR::Flaw {
    // Last concrete and abstract state reached while tracing solution.
    State concrete_state;
    const AbstractState& current_abstract_state;
    // Hypothetical Cartesian set we would have liked to reach.
    CartesianSet desired_cartesian_set;

    Flaw(
        State&& concrete_state,
        const AbstractState& current_abstract_state,
        CartesianSet&& desired_cartesian_set)
        : concrete_state(std::move(concrete_state))
        , current_abstract_state(current_abstract_state)
        , desired_cartesian_set(std::move(desired_cartesian_set))
    {
        assert(current_abstract_state.includes(this->concrete_state));
    }

    vector<Split> get_possible_splits() const
    {
        vector<Split> splits;
        /*
          For each fact in the concrete state that is not contained in the
          desired abstract state, loop over all values in the domain of the
          corresponding variable. The values that are in both the current and
          the desired abstract state are the "wanted" ones, i.e., the ones that
          we want to split off.
        */
        for (FactProxy wanted_fact_proxy : concrete_state) {
            FactPair fact = wanted_fact_proxy.get_pair();
            if (!desired_cartesian_set.test(fact.var, fact.value)) {
                VariableProxy var = wanted_fact_proxy.get_variable();
                int var_id = var.get_id();
                vector<int> wanted;
                for (int value = 0; value < var.get_domain_size(); ++value) {
                    if (current_abstract_state.contains(var_id, value) &&
                        desired_cartesian_set.test(var_id, value)) {
                        wanted.push_back(value);
                    }
                }
                assert(!wanted.empty());
                splits.emplace_back(var_id, std::move(wanted));
            }
        }
        assert(!splits.empty());
        return splits;
    }
};

CEGAR::CEGAR(
    const shared_ptr<ProbabilisticTask>& task,
    int max_states,
    int max_non_looping_transitions,
    double max_time,
    PickSplit pick,
    utils::RandomNumberGenerator& rng,
    utils::LogProxy& log)
    : task_proxy(*task)
    , domain_sizes(cegar::get_domain_sizes(task_proxy))
    , max_states(max_states)
    , max_non_looping_transitions(max_non_looping_transitions)
    , split_selector(task, pick)
    , abstraction(std::make_unique<Abstraction>(task, log))
    , abstract_search(task_properties::get_operator_costs(task_proxy))
    , timer(max_time)
    , log(log)
{
    assert(max_states >= 1);
    if (log.is_at_least_normal()) {
        log << "Start building abstraction." << endl;
        log << "Maximum number of states: " << max_states << endl;
        log << "Maximum number of transitions: " << max_non_looping_transitions
            << endl;
    }

    refinement_loop(rng);
    if (log.is_at_least_normal()) {
        log << "Done building abstraction." << endl;
        log << "Time for building abstraction: " << timer.get_elapsed_time()
            << endl;
        print_statistics();
    }
}

CEGAR::~CEGAR() = default;

unique_ptr<Abstraction> CEGAR::extract_abstraction()
{
    assert(abstraction);
    return std::move(abstraction);
}

void CEGAR::separate_facts_unreachable_before_goal()
{
    assert(abstraction->get_goals().size() == 1);
    assert(abstraction->get_num_states() == 1);
    assert(task_proxy.get_goals().size() == 1);
    FactProxy goal = task_proxy.get_goals()[0];
    utils::HashSet<FactProxy> reachable_facts =
        get_relaxed_possible_before(task_proxy, goal);
    for (VariableProxy var : task_proxy.get_variables()) {
        if (!may_keep_refining()) break;
        int var_id = var.get_id();
        vector<int> unreachable_values;
        for (int value = 0; value < var.get_domain_size(); ++value) {
            FactProxy fact = var.get_fact(value);
            if (reachable_facts.count(fact) == 0)
                unreachable_values.push_back(value);
        }
        if (!unreachable_values.empty())
            abstraction->refine(
                abstraction->get_initial_state(),
                var_id,
                unreachable_values);
    }
    abstraction->mark_all_states_as_goals();
}

bool CEGAR::may_keep_refining() const
{
    if (abstraction->get_num_states() >= max_states) {
        if (log.is_at_least_normal()) {
            log << "Reached maximum number of states." << endl;
        }
        return false;
    } else if (
        abstraction->get_transition_system().get_num_transitions() >=
        max_non_looping_transitions) {
        if (log.is_at_least_normal()) {
            log << "Reached maximum number of transitions." << endl;
        }
        return false;
    } else if (timer.is_expired()) {
        if (log.is_at_least_normal()) {
            log << "Reached time limit." << endl;
        }
        return false;
    } else if (!utils::extra_memory_padding_is_reserved()) {
        if (log.is_at_least_normal()) {
            log << "Reached memory limit." << endl;
        }
        return false;
    }
    return true;
}

void CEGAR::refinement_loop(utils::RandomNumberGenerator& rng)
{
    /*
      For landmark tasks we have to map all states in which the
      landmark might have been achieved to arbitrary abstract goal
      states. For the other types of subtasks our method won't find
      unreachable facts, but calling it unconditionally for subtasks
      with one goal doesn't hurt and simplifies the implementation.
    */
    if (task_proxy.get_goals().size() == 1) {
        separate_facts_unreachable_before_goal();
    }

    utils::Timer find_trace_timer(true);
    utils::Timer find_flaw_timer(true);
    utils::Timer refine_timer(true);

    while (may_keep_refining()) {
        find_trace_timer.resume();
        unique_ptr<Solution> solution = abstract_search.find_solution(
            abstraction->get_transition_system().get_transitions(),
            abstraction->get_initial_state().get_id(),
            abstraction->get_goals());
        find_trace_timer.stop();

        if (!solution) {
            if (log.is_at_least_normal()) {
                log << "Abstract task is unsolvable." << endl;
            }
            break;
        }

        find_flaw_timer.resume();
        unique_ptr<Flaw> flaw = find_flaw(*solution);
        find_flaw_timer.stop();

        if (!flaw) {
            if (log.is_at_least_normal()) {
                log << "Found concrete solution during refinement." << endl;
            }
            break;
        }

        refine_timer.resume();
        const AbstractState& abstract_state = flaw->current_abstract_state;
        int state_id = abstract_state.get_id();
        vector<Split> splits = flaw->get_possible_splits();
        const Split& split =
            split_selector.pick_split(abstract_state, splits, rng);
        auto new_state_ids =
            abstraction->refine(abstract_state, split.var_id, split.values);
        // Since h-values only increase we can assign the h-value to the
        // children.
        abstract_search.copy_h_value_to_children(
            state_id,
            new_state_ids.first,
            new_state_ids.second);
        refine_timer.stop();

        if (log.is_at_least_verbose() &&
            abstraction->get_num_states() % 1000 == 0) {
            log << abstraction->get_num_states() << "/" << max_states
                << " states, "
                << abstraction->get_transition_system().get_num_transitions()
                << "/" << max_non_looping_transitions << " transitions" << endl;
        }
    }
    if (log.is_at_least_normal()) {
        log << "Time for finding abstract traces: " << find_trace_timer << endl;
        log << "Time for finding flaws: " << find_flaw_timer << endl;
        log << "Time for splitting states: " << refine_timer << endl;
    }
}

unique_ptr<CEGAR::Flaw> CEGAR::find_flaw(const Solution&)
{
    // TODO: implement
    abort();
}

void CEGAR::print_statistics()
{
    if (log.is_at_least_normal()) {
        abstraction->print_statistics();
        int init_id = abstraction->get_initial_state().get_id();
        log << "Initial h value: " << abstract_search.get_h_value(init_id)
            << endl;
        log << endl;
    }
}

} // namespace cartesian
} // namespace heuristics
} // namespace probfd