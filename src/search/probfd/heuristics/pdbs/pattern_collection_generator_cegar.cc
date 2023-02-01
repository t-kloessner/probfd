#include "probfd/heuristics/pdbs/pattern_collection_generator_cegar.h"

#include "probfd/heuristics/pdbs/cegar/flaw_finding_strategy.h"
#include "probfd/heuristics/pdbs/cegar/flaw_finding_strategy_factory.h"

#include "probfd/heuristics/pdbs/expcost_projection.h"
#include "probfd/heuristics/pdbs/maxprob_projection.h"
#include "probfd/heuristics/pdbs/subcollection_finder_factory.h"

#include "probfd/tasks/root_task.h"

#include "probfd/task_proxy.h"

#include "utils/collections.h"
#include "utils/countdown_timer.h"
#include "utils/logging.h"
#include "utils/math.h"
#include "utils/rng.h"
#include "utils/rng_options.h"
#include "utils/system.h"

#include "algorithms/priority_queues.h"

#include "option_parser.h"
#include "plugin.h"

#include "task_utils/successor_generator.h"

#include <stack>

using namespace std;
using utils::Verbosity;

namespace probfd {
namespace heuristics {
namespace pdbs {

using namespace cegar;

namespace {
static const std::string token = "CEGAR_PDBs: ";

template <typename PDBType>
class MergeEvaluator : public engine_interfaces::StateEvaluator<StateRank> {
    const StateRankingFunction* mapper;
    const PDBType& left;
    const PDBType& right;

public:
    explicit MergeEvaluator(
        const StateRankingFunction* mapper,
        const PDBType& left,
        const PDBType& right)
        : mapper(mapper)
        , left(left)
        , right(right)
    {
    }

protected:
    EvaluationResult evaluate(const StateRank& state) const override
    {
        StateRank lstate = mapper->convert(state, left.get_pattern());

        auto leval = left.evaluate(lstate);

        if (leval.is_unsolvable()) {
            return leval;
        }

        StateRank rstate = mapper->convert(state, right.get_pattern());

        auto reval = right.evaluate(rstate);

        if (reval.is_unsolvable()) {
            return reval;
        }

        return {false, std::min(leval.get_estimate(), reval.get_estimate())};
    }
};

template <typename PDBType>
PDBType* construct_merge_pdb(
    const ProbabilisticTaskProxy& task_proxy,
    const PDBType& merge_left,
    const PDBType& merge_right,
    bool operator_pruning)
{
    const Pattern& left_pattern = merge_left.get_pattern();
    const Pattern& right_pattern = merge_right.get_pattern();

    Pattern merge_pattern;
    merge_pattern.reserve(left_pattern.size() + right_pattern.size());

    std::merge(
        left_pattern.begin(),
        left_pattern.end(),
        right_pattern.begin(),
        right_pattern.end(),
        std::back_inserter(merge_pattern));

    StateRankingFunction* mapper =
        new StateRankingFunction(task_proxy, merge_pattern);

    return new PDBType(
        task_proxy,
        mapper,
        operator_pruning,
        MergeEvaluator<PDBType>(mapper, merge_left, merge_right));
}

} // namespace

template <typename PDBType>
AbstractSolutionData<PDBType>::AbstractSolutionData(
    const ProbabilisticTaskProxy& task_proxy,
    const shared_ptr<utils::RandomNumberGenerator>& rng,
    const Pattern& pattern,
    set<int> blacklist,
    bool wildcard)
    : pdb(new PDBType(task_proxy, pattern, !wildcard))
    , blacklist(std::move(blacklist))
    , policy(pdb->get_optimal_abstract_policy(rng, wildcard))
    , solved(false)
{
}

template <typename PDBType>
AbstractSolutionData<PDBType>::AbstractSolutionData(
    const ProbabilisticTaskProxy& task_proxy,
    const shared_ptr<utils::RandomNumberGenerator>& rng,
    const PDBType& previous,
    int add_var,
    std::set<int> blacklist,
    bool wildcard)
    : pdb(new PDBType(task_proxy, previous, add_var, !wildcard))
    , blacklist(std::move(blacklist))
    , policy(pdb->get_optimal_abstract_policy(rng, wildcard))
    , solved(false)
{
}

template <typename PDBType>
AbstractSolutionData<PDBType>::AbstractSolutionData(
    const ProbabilisticTaskProxy& task_proxy,
    const shared_ptr<utils::RandomNumberGenerator>& rng,
    const PDBType& merge_left,
    const PDBType& merge_right,
    std::set<int> blacklist,
    bool wildcard)
    : pdb(construct_merge_pdb(task_proxy, merge_left, merge_right, !wildcard))
    , blacklist(std::move(blacklist))
    , policy(pdb->get_optimal_abstract_policy(rng, wildcard))
    , solved(false)
{
}

template <typename PDBType>
const Pattern& AbstractSolutionData<PDBType>::get_pattern() const
{
    return pdb->get_pattern();
}

template <typename PDBType>
void AbstractSolutionData<PDBType>::blacklist_variable(int var)
{
    blacklist.insert(var);
}

template <typename PDBType>
bool AbstractSolutionData<PDBType>::is_blacklisted(int var) const
{
    return utils::contains(blacklist, var);
}

template <typename PDBType>
const std::set<int>& AbstractSolutionData<PDBType>::get_blacklist() const
{
    return blacklist;
}

template <typename PDBType>
const PDBType& AbstractSolutionData<PDBType>::get_pdb() const
{
    assert(pdb);
    return *pdb;
}

template <typename PDBType>
std::unique_ptr<PDBType> AbstractSolutionData<PDBType>::steal_pdb()
{
    return std::move(pdb);
}

template <typename PDBType>
const AbstractPolicy& AbstractSolutionData<PDBType>::get_policy() const
{
    return policy;
}

template <typename PDBType>
value_t AbstractSolutionData<PDBType>::get_policy_cost() const
{
    ProbabilisticTaskProxy task_proxy(*tasks::g_root_task);
    return pdb->lookup(task_proxy.get_initial_state());
}

template <typename PDBType>
bool AbstractSolutionData<PDBType>::is_solved() const
{
    return solved;
}

template <typename PDBType>
void AbstractSolutionData<PDBType>::mark_as_solved()
{
    solved = true;
}

template <typename PDBType>
bool AbstractSolutionData<PDBType>::solution_exists() const
{
    ProbabilisticTaskProxy task_proxy(*tasks::g_root_task);
    return !pdb->evaluate(task_proxy.get_initial_state()).is_unsolvable();
}

// Instantiations
template class AbstractSolutionData<MaxProbProjection>;
template class AbstractSolutionData<ExpCostProjection>;

template <typename PDBType>
PatternCollectionGeneratorCegar<PDBType>::PatternCollectionGeneratorCegar(
    const shared_ptr<utils::RandomNumberGenerator>& arg_rng,
    std::shared_ptr<SubCollectionFinderFactory> subcollection_finder_factory,
    std::shared_ptr<FlawFindingStrategyFactory<PDBType>> flaw_strategy_factory,
    bool wildcard,
    int arg_max_refinements,
    int arg_max_pdb_size,
    int arg_max_collection_size,
    bool arg_ignore_goal_violations,
    bool treat_goal_violations_differently,
    bool arg_local_blacklisting,
    int global_blacklist_size,
    InitialCollectionType arg_initial,
    int given_goal,
    Verbosity verbosity,
    double arg_max_time)
    : rng(arg_rng)
    , subcollection_finder_factory(subcollection_finder_factory)
    , flaw_strategy_factory(flaw_strategy_factory)
    , wildcard(wildcard)
    , max_refinements(arg_max_refinements)
    , max_pdb_size(arg_max_pdb_size)
    , max_collection_size(arg_max_collection_size)
    , ignore_goal_violations(arg_ignore_goal_violations)
    , treat_goal_violations_differently(treat_goal_violations_differently)
    , local_blacklisting(arg_local_blacklisting)
    , global_blacklist_size(global_blacklist_size)
    , initial(arg_initial)
    , given_goal(given_goal)
    , verbosity(verbosity)
    , max_time(arg_max_time)
    , collection_size(0)
    , concrete_solution_index(-1)
{
    if (initial == InitialCollectionType::GIVEN_GOAL && given_goal == -1) {
        cerr << "Initial collection type 'given goal', but no goal specified"
             << endl;
        utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

    if (initial != InitialCollectionType::GIVEN_GOAL && given_goal != -1) {
        cerr << "Goal given, but initial collection type is not set to use it"
             << endl;
        utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

    if (verbosity >= Verbosity::NORMAL) {
        cout << token << "options: " << endl;

        cout << token
             << "flaw strategy factory: " << flaw_strategy_factory->get_name()
             << endl;

        cout << token << "max refinements: " << max_refinements << endl;
        cout << token << "max pdb size: " << max_pdb_size << endl;
        cout << token << "max collection size: " << max_collection_size << endl;
        cout << token << "ignore goal violations: " << ignore_goal_violations
             << endl;
        cout << token << "treat goal violations like regular ones: "
             << treat_goal_violations_differently << endl;
        cout << token << "local blacklisting: " << local_blacklisting << endl;
        cout << token << "global blacklist size: " << global_blacklist_size
             << endl;
        cout << token << "initial collection type: ";

        switch (initial) {
        case InitialCollectionType::GIVEN_GOAL:
            cout << "given goal" << endl;
            break;
        case InitialCollectionType::RANDOM_GOAL:
            cout << "random goal" << endl;
            break;
        case InitialCollectionType::ALL_GOALS:
            cout << "all goals" << endl;
            break;
        }

        cout << token << "given goal: " << given_goal << endl;
        cout << token << "Verbosity: ";

        switch (verbosity) {
        default:
        case Verbosity::NORMAL: cout << "normal"; break;
        case Verbosity::VERBOSE: cout << "verbose"; break;
        case Verbosity::DEBUG: cout << "debug"; break;
        }

        cout << endl;
        cout << token << "max time: " << max_time << endl;
    }

    if (verbosity >= Verbosity::NORMAL) {
        cout << endl;
    }
}

template <typename PDBType>
PatternCollectionGeneratorCegar<PDBType>::PatternCollectionGeneratorCegar(
    const options::Options& opts)
    : PatternCollectionGeneratorCegar(
          utils::parse_rng_from_options(opts),
          opts.get<std::shared_ptr<SubCollectionFinderFactory>>(
              "subcollection_finder_factory"),
          opts.get<std::shared_ptr<FlawFindingStrategyFactory<PDBType>>>(
              "flaw_strategy_factory"),
          opts.get<bool>("wildcard"),
          opts.get<int>("max_refinements"),
          opts.get<int>("max_pdb_size"),
          opts.get<int>("max_collection_size"),
          opts.get<bool>("ignore_goal_violations"),
          opts.get<bool>("treat_goal_violations_differently"),
          opts.get<bool>("local_blacklisting"),
          opts.get<int>("global_blacklist_size"),
          opts.get<InitialCollectionType>("initial"),
          opts.get<int>("given_goal"),
          opts.get<Verbosity>("verbosity"),
          opts.get<double>("max_time"))
{
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::print_collection() const
{
    cout << "[";

    for (size_t i = 0; i < solutions.size(); ++i) {
        const auto& sol = solutions[i];
        if (sol) {
            cout << sol->get_pattern();
            if (i != solutions.size() - 1) {
                cout << ", ";
            }
        }
    }

    cout << "]" << endl;
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<
    PDBType>::generate_trivial_solution_collection(const ProbabilisticTaskProxy&
                                                       task_proxy)
{
    assert(!remaining_goals.empty());

    switch (initial) {
    case InitialCollectionType::GIVEN_GOAL: {
        assert(given_goal != -1);
        update_goals(given_goal);
        add_pattern_for_var(task_proxy, given_goal);
        break;
    }
    case InitialCollectionType::RANDOM_GOAL: {
        int var = remaining_goals.back();
        remaining_goals.pop_back();
        add_pattern_for_var(task_proxy, var);
        break;
    }
    case InitialCollectionType::ALL_GOALS: {
        while (!remaining_goals.empty()) {
            int var = remaining_goals.back();
            remaining_goals.pop_back();
            add_pattern_for_var(task_proxy, var);
        }

        break;
    }
    }

    if (verbosity >= Verbosity::NORMAL) {
        cout << token << "initial collection: ";
        print_collection();

        if (verbosity >= Verbosity::VERBOSE) {
            cout << endl;
        }
    }
}

template <typename PDBType>
bool PatternCollectionGeneratorCegar<PDBType>::time_limit_reached(
    const utils::CountdownTimer& timer) const
{
    if (timer.is_expired()) {
        if (verbosity >= Verbosity::NORMAL) {
            cout << token << "time limit reached" << endl;
        }

        return true;
    }

    return false;
}

template <typename PDBType>
bool PatternCollectionGeneratorCegar<PDBType>::termination_conditions_met(
    const utils::CountdownTimer& timer,
    int refinement_counter) const
{
    if (time_limit_reached(timer)) {
        return true;
    }

    if (refinement_counter == max_refinements) {
        if (verbosity >= Verbosity::NORMAL) {
            cout << token << "maximum allowed number of refinements reached."
                 << endl;
        }

        return true;
    }

    return false;
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::apply_policy(
    FlawFindingStrategy<PDBType>& flaw_strategy,
    int solution_index,
    std::vector<int>& state,
    std::vector<Flaw>& flaws)
{
    const size_t num_flaws_before = flaws.size();
    bool executable =
        flaw_strategy.apply_policy(*this, solution_index, state, flaws);

    // Check for new flaws
    if (flaws.size() == num_flaws_before) {
        auto& solution = *solutions[solution_index];

        // Check if policy is executable modulo blacklisting.
        // Even if there are no flaws, there might be goal violations
        // that did not make it into the flaw list.
        if (executable && global_blacklist.empty() &&
            solution.get_blacklist().empty()) {
            /*
                If there are no flaws, this does not guarantee that the plan
                is valid in the concrete state space because we might have
                ignored variables that have been blacklisted. Hence the tests
                for empty blacklists.
            */
            concrete_solution_index = solution_index;
        }

        solution.mark_as_solved();
    }
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::get_flaws(
    FlawFindingStrategy<PDBType>& flaw_strategy,
    const State& initial_state,
    std::vector<Flaw>& flaws)
{
    std::vector<int> concrete_init = initial_state.get_unpacked_values();

    const int num_solutions = static_cast<int>(solutions.size());
    for (int sol_idx = 0; sol_idx < num_solutions; ++sol_idx) {
        auto& sol = solutions[sol_idx];

        if (!sol || sol->is_solved()) {
            continue;
        }

        // abort here if no abstract solution could be found
        if (!sol->solution_exists()) {
            cout << token << "Problem unsolvable" << endl;
            utils::exit_with(utils::ExitCode::SEARCH_UNSOLVABLE);
        }

        // find out if and why the abstract solution
        // would not work for the concrete task.
        // We always start with the initial state.
        apply_policy(flaw_strategy, sol_idx, concrete_init, flaws);

        if (concrete_solution_index != -1) {
            assert(sol_idx == concrete_solution_index);
            flaws.clear();
            return;
        }
    }
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::update_goals(int added_var)
{
    /*
      Only call this method if added_var is definitely added to some
      pattern. It removes the variable from remaining_goals if it is
      contained there.
    */
    auto result =
        find(remaining_goals.begin(), remaining_goals.end(), added_var);
    if (result != remaining_goals.end()) {
        remaining_goals.erase(result);
    }
}

template <typename PDBType>
bool PatternCollectionGeneratorCegar<PDBType>::can_add_singleton_pattern(
    const VariablesProxy& variables,
    int var) const
{
    int pdb_size = variables[var].get_domain_size();
    return pdb_size <= max_pdb_size &&
           collection_size <= max_collection_size - pdb_size;
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::add_pattern_for_var(
    const ProbabilisticTaskProxy& task_proxy,
    int var)
{
    auto& sol = solutions.emplace_back(new AbstractSolutionData<PDBType>(
        task_proxy,
        rng,
        {var},
        {},
        wildcard));
    solution_lookup[var] = solutions.size() - 1;
    collection_size += sol->get_pdb().num_states();
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::handle_goal_violation(
    const ProbabilisticTaskProxy& task_proxy,
    const VariablesProxy& variables,
    const Flaw& flaw)
{
    int var = flaw.variable;
    assert(!utils::contains_key(solution_lookup, var));

    if (verbosity >= Verbosity::VERBOSE) {
        cout << token << "introducing goal variable " << var << endl;
    }

    // check for the edge case where the single-variable pattern
    // causes the collection to grow larger than the allowed limit
    if (can_add_singleton_pattern(variables, var)) {
        update_goals(var);
        add_pattern_for_var(task_proxy, var);
    } else {
        if (verbosity >= Verbosity::VERBOSE) {
            cout << token
                 << "Can't add variable because it is too large to "
                    "fit either the pdb max size limit or the "
                    "collection size limit. Blacklisting..."
                 << endl;
        }

        global_blacklist.insert(var);
    }
}

template <typename PDBType>
bool PatternCollectionGeneratorCegar<PDBType>::can_merge_patterns(
    int index1,
    int index2) const
{
    int pdb_size1 = solutions[index1]->get_pdb().num_states();
    int pdb_size2 = solutions[index2]->get_pdb().num_states();

    if (!utils::is_product_within_limit(pdb_size1, pdb_size2, max_pdb_size)) {
        return false;
    }

    int added_size = pdb_size1 * pdb_size2 - pdb_size1 - pdb_size2;
    return collection_size + added_size <= max_collection_size;
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::merge_patterns(
    const ProbabilisticTaskProxy& task_proxy,
    int index1,
    int index2)
{
    // Merge pattern at index2 into pattern at index2
    AbstractSolutionData<PDBType>& solution1 = *solutions[index1];
    AbstractSolutionData<PDBType>& solution2 = *solutions[index2];

    const PDBType& pdb1 = solution1.get_pdb();
    const PDBType& pdb2 = solution2.get_pdb();

    // update look-up table
    for (int var : solution2.get_pattern()) {
        solution_lookup[var] = index1;
    }

    // compute merged local blacklist
    const set<int>& blacklist1 = solution1.get_blacklist();
    const set<int>& blacklist2 = solution2.get_blacklist();
    set<int> new_blacklist(blacklist1);
    new_blacklist.insert(blacklist2.begin(), blacklist2.end());

    // store old pdb sizes
    int pdb_size1 = pdb1.num_states();
    int pdb_size2 = pdb2.num_states();

    // compute merge solution
    unique_ptr<AbstractSolutionData<PDBType>> merged(
        new AbstractSolutionData<
            PDBType>(task_proxy, rng, pdb1, pdb2, new_blacklist, wildcard));

    // update collection size
    collection_size -= pdb_size1;
    collection_size -= pdb_size2;
    collection_size += merged->get_pdb().num_states();

    // clean-up
    solutions[index1] = std::move(merged);
    solutions[index2] = nullptr;
}

template <typename PDBType>
bool PatternCollectionGeneratorCegar<PDBType>::can_add_variable_to_pattern(
    const VariablesProxy& variables,
    int index,
    int var) const
{
    int pdb_size = solutions[index]->get_pdb().num_states();
    int domain_size = variables[var].get_domain_size();

    if (!utils::is_product_within_limit(pdb_size, domain_size, max_pdb_size)) {
        return false;
    }

    int added_size = pdb_size * domain_size - pdb_size;
    return collection_size + added_size <= max_collection_size;
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::add_variable_to_pattern(
    const ProbabilisticTaskProxy& task_proxy,
    int index,
    int var)
{
    AbstractSolutionData<PDBType>& solution = *solutions[index];

    // compute new solution
    std::unique_ptr<AbstractSolutionData<PDBType>> new_solution(
        new AbstractSolutionData<PDBType>(
            task_proxy,
            rng,
            solution.get_pdb(),
            var,
            solution.get_blacklist(),
            wildcard));

    // update collection size
    collection_size -= solution.get_pdb().num_states();
    collection_size += new_solution->get_pdb().num_states();

    // update look-up table and possibly remaining_goals, clean-up
    solution_lookup[var] = index;
    update_goals(var);
    solutions[index] = move(new_solution);
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::handle_precondition_violation(
    const ProbabilisticTaskProxy& task_proxy,
    const VariablesProxy& variables,
    const Flaw& flaw)
{
    int sol_index = flaw.solution_index;
    int var = flaw.variable;
    bool added_var = false;

    const auto it = solution_lookup.find(var);

    if (it != solution_lookup.end()) {
        // var is already in another pattern of the collection
        int other_index = it->second;
        assert(other_index != sol_index);
        assert(solutions[other_index] != nullptr);

        if (verbosity >= Verbosity::VERBOSE) {
            cout << token << "var" << var << " is already in pattern "
                 << solutions[other_index]->get_pattern() << endl;
        }

        if (can_merge_patterns(sol_index, other_index)) {
            if (verbosity >= Verbosity::VERBOSE) {
                cout << token << "merge the two patterns" << endl;
            }

            merge_patterns(task_proxy, sol_index, other_index);
            added_var = true;
        }
    } else {
        // var is not yet in the collection
        // Note on precondition violations: var may be a goal variable but
        // nevertheless is added to the pattern causing the flaw and not to
        // a single new pattern.
        if (verbosity >= Verbosity::VERBOSE) {
            cout << token << "var" << var << " is not in the collection yet"
                 << endl;
        }

        if (can_add_variable_to_pattern(variables, sol_index, var)) {
            if (verbosity >= Verbosity::VERBOSE) {
                cout << token << "add it to the pattern" << endl;
            }

            add_variable_to_pattern(task_proxy, sol_index, var);
            added_var = true;
        }
    }

    if (!added_var) {
        if (verbosity >= Verbosity::VERBOSE) {
            cout << token
                 << "Could not add var/merge patterns due to size "
                    "limits. Blacklisting ";
        }

        if (local_blacklisting) {
            solutions[sol_index]->blacklist_variable(var);

            if (verbosity >= Verbosity::VERBOSE) {
                cout << "locally." << endl;
            }
        } else {
            global_blacklist.insert(var);

            if (verbosity >= Verbosity::VERBOSE) {
                cout << "globally." << endl;
            }
        }
    }
}

template <typename PDBType>
void PatternCollectionGeneratorCegar<PDBType>::refine(
    const ProbabilisticTaskProxy& task_proxy,
    const VariablesProxy& variables,
    const std::vector<Flaw>& flaws)
{
    assert(!flaws.empty());

    // pick a random flaw
    int random_flaw_index = rng->random(flaws.size());
    const Flaw& flaw = flaws[random_flaw_index];

    if (verbosity >= Verbosity::VERBOSE) {
        cout << token << "chosen flaw: pattern "
             << solutions[flaw.solution_index]->get_pattern();
    }

    if (treat_goal_violations_differently && flaw.is_goal_violation) {
        if (verbosity >= Verbosity::VERBOSE) {
            cout << " with a goal violation on " << flaw.variable << endl;
        }

        handle_goal_violation(task_proxy, variables, flaw);
    } else {
        if (verbosity >= Verbosity::VERBOSE) {
            cout << " with a violated precondition on " << flaw.variable
                 << endl;
        }

        handle_precondition_violation(task_proxy, variables, flaw);
    }
}

template <typename PDBType>
PatternCollectionInformation<PDBType>
PatternCollectionGeneratorCegar<PDBType>::generate(
    const std::shared_ptr<ProbabilisticTask>& task)
{
    utils::CountdownTimer timer(max_time);

    std::unique_ptr<FlawFindingStrategy<PDBType>> flaw_strategy =
        flaw_strategy_factory->create_flaw_finder(task.get());

    const ProbabilisticTaskProxy task_proxy(*task);
    const VariablesProxy variables = task_proxy.get_variables();
    const GoalsProxy goals = task_proxy.get_goals();

    if (given_goal != -1 && given_goal >= static_cast<int>(goals.size())) {
        cerr << "Goal variable out of range of task's variables" << endl;
        utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

    // save all goals in random order for refinement later
    bool found_given_goal = false;
    for (FactProxy fact : goals) {
        const int goal_var = fact.get_variable().get_id();
        remaining_goals.push_back(goal_var);
        if (given_goal != -1 && goal_var == given_goal) {
            found_given_goal = true;
        }
    }

    if (given_goal != -1 && !found_given_goal) {
        cerr << " Given goal variable is not a goal variable" << endl;
        utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

    rng->shuffle(remaining_goals);

    if (global_blacklist_size) {
        const int num_vars = variables.size();
        vector<int> nongoals;
        nongoals.reserve(num_vars - remaining_goals.size());
        for (int var_id = 0; var_id < num_vars; ++var_id) {
            if (find(remaining_goals.begin(), remaining_goals.end(), var_id) ==
                remaining_goals.end()) {
                nongoals.push_back(var_id);
            }
        }
        rng->shuffle(nongoals);

        // Select a random subset of non goals.
        const auto m =
            min(static_cast<size_t>(global_blacklist_size), nongoals.size());

        for (size_t i = 0; i < m; ++i) {
            int var_id = nongoals[i];

            if (verbosity >= Verbosity::VERBOSE) {
                cout << token << "blacklisting var" << var_id << endl;
            }

            global_blacklist.insert(var_id);
        }
    }

    // Start with a solution of the trivial abstraction
    generate_trivial_solution_collection(task_proxy);

    State initial_state = task_proxy.get_initial_state();
    initial_state.unpack();

    // main loop of the algorithm
    int refinement_counter = 0;
    while (!termination_conditions_met(timer, refinement_counter)) {
        if (verbosity >= Verbosity::VERBOSE) {
            cout << "iteration #" << refinement_counter + 1 << endl;
        }

        // vector of solution indices and flaws associated with said solutions
        std::vector<Flaw> flaws;
        get_flaws(*flaw_strategy, initial_state, flaws);

        if (flaws.empty()) {
            if (concrete_solution_index != -1) {
                auto& sol = solutions[concrete_solution_index];

                assert(
                    global_blacklist.empty() && sol->get_blacklist().empty());

                if (verbosity >= Verbosity::VERBOSE) {
                    cout << token
                         << "Task solved during computation of abstract"
                         << "policies." << endl;
                    cout << token
                         << "Cost of policy: " << sol->get_policy_cost()
                         << endl;
                }
            } else {
                if (verbosity >= Verbosity::VERBOSE) {
                    cout << token << "Flaw list empty."
                         << "No further refinements possible." << endl;
                }
            }

            break;
        }

        if (time_limit_reached(timer)) {
            break;
        }

        // if there was a flaw, then refine the abstraction
        // such that said flaw does not occur again
        refine(task_proxy, variables, flaws);

        ++refinement_counter;

        if (verbosity >= Verbosity::VERBOSE) {
            cout << token << "current collection size: " << collection_size
                 << endl;
            cout << token << "current collection: ";
            print_collection();
        }

        if (verbosity >= Verbosity::VERBOSE) {
            cout << endl;
        }
    }

    if (verbosity >= Verbosity::NORMAL) {
        cout << endl;
    }

    auto patterns = std::make_shared<PatternCollection>();
    auto pdbs = std::make_shared<PPDBCollection<PDBType>>();

    if (concrete_solution_index != -1) {
        unique_ptr<PDBType> pdb =
            solutions[concrete_solution_index]->steal_pdb();
        patterns->push_back(pdb->get_pattern());
        pdbs->emplace_back(std::move(pdb));
    } else {
        for (const auto& sol : solutions) {
            if (sol) {
                unique_ptr<PDBType> pdb = sol->steal_pdb();
                patterns->push_back(pdb->get_pattern());
                pdbs->emplace_back(std::move(pdb));
            }
        }
    }

    if (verbosity >= Verbosity::NORMAL) {
        cout << token << "computation time: " << timer.get_elapsed_time()
             << endl;
        cout << token << "number of iterations: " << refinement_counter << endl;
        cout << token << "final collection: " << *patterns << endl << endl;
        cout << token
             << "final collection number of patterns: " << patterns->size()
             << endl;
        cout << token
             << "final collection summed PDB sizes: " << collection_size
             << endl;
    }

    std::shared_ptr<SubCollectionFinder> subcollection_finder =
        subcollection_finder_factory->create_subcollection_finder(task_proxy);

    PatternCollectionInformation<PDBType> pattern_collection_information(
        task_proxy,
        patterns,
        subcollection_finder);
    pattern_collection_information.set_pdbs(pdbs);
    return pattern_collection_information;
}

template <typename PDBType>
void add_flaw_finder_options_to_parser(options::OptionParser& parser);

template <>
void add_flaw_finder_options_to_parser<ExpCostProjection>(
    options::OptionParser& parser)
{
    parser.add_option<
        std::shared_ptr<FlawFindingStrategyFactory<ExpCostProjection>>>(
        "flaw_strategy_factory",
        "strategy factory creating the strategy used to find flaws in a policy",
        "pucs_flaw_finder_factory_ec()");
}

template <>
void add_flaw_finder_options_to_parser<MaxProbProjection>(
    options::OptionParser& parser)
{
    parser.add_option<
        std::shared_ptr<FlawFindingStrategyFactory<MaxProbProjection>>>(
        "flaw_strategy_factory",
        "strategy factory creating the strategy used to find flaws in a policy",
        "pucs_flaw_finder_factory_mp()");
}

template <typename PDBType>
void add_pattern_collection_generator_cegar_options_to_parser(
    options::OptionParser& parser)
{
    utils::add_log_options_to_parser(parser);

    parser.add_option<bool>(
        "wildcard",
        "whether to compute a wildcard policy",
        "false");
    parser.add_option<int>(
        "max_refinements",
        "maximum allowed number of refinements",
        "infinity",
        Bounds("0", "infinity"));
    parser.add_option<int>(
        "max_pdb_size",
        "maximum allowed number of states in a pdb (not applied to initial "
        "goal variable pattern(s))",
        "1000000",
        Bounds("1", "infinity"));
    parser.add_option<int>(
        "max_collection_size",
        "limit for the total number of PDB entries across all PDBs (not "
        "applied to initial goal variable pattern(s))",
        "infinity",
        Bounds("1", "infinity"));
    parser.add_option<bool>(
        "local_blacklisting",
        "if a variable is too large to be added to a pattern, forbid "
        "it only for that pattern",
        "true");
    parser.add_option<bool>(
        "ignore_goal_violations",
        "ignore goal violations and consequently generate a single pattern",
        "false");
    parser.add_option<int>(
        "global_blacklist_size",
        "Number of randomly selected non-goal variables that are globally "
        "blacklisted, which means excluded from being added to the pattern "
        "collection. 0 means no global blacklisting happens, infinity "
        "means to always exclude all non-goal variables.",
        "0",
        Bounds("0", "infinity"));
    std::vector<std::string> initial_collection_options;
    initial_collection_options.emplace_back("GIVEN_GOAL");
    initial_collection_options.emplace_back("RANDOM_GOAL");
    initial_collection_options.emplace_back("ALL_GOALS");
    parser.add_enum_option<InitialCollectionType>(
        "initial",
        initial_collection_options,
        "initial collection for refinement",
        "ALL_GOALS");
    parser.add_option<int>(
        "given_goal",
        "a goal variable to be used as the initial collection",
        "-1");
    parser.add_option<double>(
        "max_time",
        "maximum time in seconds for CEGAR pattern generation. "
        "This includes the creation of the initial PDB collection"
        " as well as the creation of the correlation matrix.",
        "infinity",
        Bounds("0.0", "infinity"));
    parser.add_option<bool>(
        "treat_goal_violations_differently",
        "If true, violated goal variables will be introduced as a separate "
        "pattern. Otherwise, they will be treated like precondition variables, "
        "thus added to the pattern in question or merging two patterns if "
        "already in the collection.",
        "true");
    parser.add_option<std::shared_ptr<SubCollectionFinderFactory>>(
        "subcollection_finder_factory",
        "The subcollection finder factory.",
        "finder_max_orthogonality_factory()");

    add_flaw_finder_options_to_parser<PDBType>(parser);
}

template void
add_pattern_collection_generator_cegar_options_to_parser<MaxProbProjection>(
    options::OptionParser& parser);
template void
add_pattern_collection_generator_cegar_options_to_parser<ExpCostProjection>(
    options::OptionParser& parser);

template <typename PDBType>
static shared_ptr<PatternCollectionGenerator<PDBType>>
_parse(options::OptionParser& parser)
{
    add_pattern_collection_generator_cegar_options_to_parser<PDBType>(parser);
    utils::add_rng_options(parser);

    Options opts = parser.parse();
    if (parser.dry_run()) return nullptr;

    return make_shared<PatternCollectionGeneratorCegar<PDBType>>(opts);
}

static Plugin<PatternCollectionGenerator<MaxProbProjection>>
    _plugin_maxprob("cegar_maxprob_pdbs", _parse<MaxProbProjection>);
static Plugin<PatternCollectionGenerator<ExpCostProjection>>
    _plugin_expcost("cegar_ecpdbs", _parse<ExpCostProjection>);

template class PatternCollectionGeneratorCegar<MaxProbProjection>;
template class PatternCollectionGeneratorCegar<ExpCostProjection>;

} // namespace pdbs
} // namespace heuristics
} // namespace probfd