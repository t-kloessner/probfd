#include "probfd/heuristics/pdbs/maxprob_pattern_database.h"

#include "probfd/engines/interval_iteration.h"

#include "probfd/utils/graph_visualization.h"

#include "pdbs/pattern_database.h"

#include "utils/collections.h"

#include "lp/lp_solver.h"

#include <deque>
#include <sstream>
#include <unordered_map>
#include <unordered_set>

namespace probfd {
namespace heuristics {
namespace pdbs {

MaxProbPatternDatabase::MaxProbPatternDatabase(
    const ProbabilisticTaskProxy& task_proxy,
    const Pattern& pattern,
    bool operator_pruning,
    const StateRankEvaluator& heuristic)
    : ProbabilisticPatternDatabase(task_proxy, pattern, operator_pruning, 0_vt)
{
    compute_value_table(heuristic);
}

MaxProbPatternDatabase::MaxProbPatternDatabase(
    const ProbabilisticTaskProxy& task_proxy,
    const ::pdbs::PatternDatabase& pdb,
    bool operator_pruning)
    : MaxProbPatternDatabase(
          task_proxy,
          pdb.get_pattern(),
          operator_pruning,
          DeadendPDBEvaluator(pdb))
{
}

MaxProbPatternDatabase::MaxProbPatternDatabase(
    const ProbabilisticTaskProxy& task_proxy,
    const MaxProbPatternDatabase& pdb,
    int add_var,
    bool operator_pruning)
    : ProbabilisticPatternDatabase(
          task_proxy,
          utils::insert(pdb.get_pattern(), add_var),
          operator_pruning,
          0_vt)
{
    compute_value_table(IncrementalPPDBEvaluator(pdb, &state_mapper_, add_var));
}

MaxProbPatternDatabase::MaxProbPatternDatabase(
    const ProbabilisticTaskProxy& task_proxy,
    const MaxProbPatternDatabase& left,
    const MaxProbPatternDatabase& right,
    bool operator_pruning)
    : ProbabilisticPatternDatabase(
          task_proxy,
          utils::merge_sorted(left.get_pattern(), right.get_pattern()),
          operator_pruning,
          0_vt)
{
    compute_value_table(MergeEvaluator(state_mapper_, left, right));
}

void MaxProbPatternDatabase::compute_value_table(
    const StateRankEvaluator& heuristic)
{
    using namespace engine_interfaces;
    using namespace engines::interval_iteration;

    ZeroCostAbstractCostFunction cost(
        abstract_state_space_.goal_state_flags_,
        -1_vt,
        0_vt);

    StateIDMap<StateRank> state_id_map;
    ActionIDMap<const AbstractOperator*> action_id_map(
        abstract_state_space_.abstract_operators_);

    TransitionGenerator<const AbstractOperator*> transition_gen(
        state_id_map,
        abstract_state_space_.match_tree_);

    IntervalIteration<StateRank, const AbstractOperator*> vi(
        &state_id_map,
        &action_id_map,
        &transition_gen,
        &cost,
        &heuristic,
        true,
        true);

    std::vector<StateID> proper_states;

    std::vector<Interval> interval_value_table(state_mapper_.num_states());

    vi.solve(
        abstract_state_space_.initial_state_,
        interval_value_table,
        dead_ends_,
        proper_states);

    // We only need the upper bounds
    for (std::size_t i = 0; i != interval_value_table.size(); ++i) {
        value_table[i] = interval_value_table[i].upper;
    }

#if !defined(NDEBUG)
    std::cout << "(II) Pattern [";
    for (unsigned i = 0; i < state_mapper_.get_pattern().size(); ++i) {
        std::cout << (i > 0 ? ", " : "") << state_mapper_.get_pattern()[i];
    }

    std::cout << "]: value="
              << interval_value_table[abstract_state_space_.initial_state_.id]
              << std::endl;

#if defined(USE_LP)
    verify(state_id_map);
#endif
#endif
}

EvaluationResult MaxProbPatternDatabase::evaluate(const State& s) const
{
    return evaluate(get_abstract_state(s));
}

EvaluationResult MaxProbPatternDatabase::evaluate(StateRank s) const
{
    if (is_dead_end(s)) {
        return {true, 0_vt};
    }

    return {false, this->lookup(s)};
}

AbstractPolicy MaxProbPatternDatabase::get_optimal_abstract_policy(
    const std::shared_ptr<utils::RandomNumberGenerator>& rng,
    bool wildcard) const
{
    return ProbabilisticPatternDatabase::get_optimal_abstract_policy(
        rng,
        wildcard,
        false);
}

AbstractPolicy MaxProbPatternDatabase::get_optimal_abstract_policy_no_traps(
    const std::shared_ptr<utils::RandomNumberGenerator>& rng,
    bool wildcard) const
{
    return ProbabilisticPatternDatabase::get_optimal_abstract_policy_no_traps(
        rng,
        wildcard,
        false);
}

void MaxProbPatternDatabase::dump_graphviz(
    const std::string& path,
    bool transition_labels)
{
    auto s2str = [this](const StateRank& x) {
        std::ostringstream out;
        out.precision(3);
        out << x.id;

        if (utils::contains(dead_ends_, StateID(x.id))) {
            out << "\\nh = 0 (dead)";
        } else {
            out << "\\nh = " << value_table[x.id];
        }

        return out.str();
    };

    ZeroCostAbstractCostFunction cost(
        abstract_state_space_.goal_state_flags_,
        -1_vt,
        0_vt);

    ProbabilisticPatternDatabase::dump_graphviz(
        path,
        s2str,
        cost,
        transition_labels);
}

#if !defined(NDEBUG) && defined(USE_LP)
void MaxProbPatternDatabase::verify(
    const engine_interfaces::StateIDMap<StateRank>& state_id_map)
{
    lp::LPSolverType type;

#ifdef COIN_HAS_CLP
    type = lp::LPSolverType::CLP;
#elif defined(COIN_HAS_CPX)
    type = lp::LPSolverType::CPLEX;
#elif defined(COIN_HAS_GRB)
    type = lp::LPSolverType::GUROBI;
#elif defined(COIN_HAS_SPX)
    type = lp::LPSolverType::SOPLEX;
#else
    std::cerr << "Warning: Could not verify PDB value table since no LP solver"
                 "is available !"
              << std::endl;
    return;
#endif

    lp::LPSolver solver(type);
    const double inf = solver.get_infinity();

    std::unordered_set<StateID> visited(
        state_id_map.visited_begin(),
        state_id_map.visited_end());

    named_vector::NamedVector<lp::LPVariable> variables;

    for (StateRank s = StateRank(0);
         s.id != static_cast<int>(state_mapper_.num_states());
         ++s.id) {
        variables.emplace_back(-1_vt, 0_vt, 1_vt);
    }

    named_vector::NamedVector<lp::LPConstraint> constraints;

    std::deque<StateRank> queue({abstract_state_space_.initial_state_});
    std::set<StateRank> seen({abstract_state_space_.initial_state_});

    while (!queue.empty()) {
        StateRank s = queue.front();
        queue.pop_front();

        assert(visited.contains(StateID(s.id)));
        visited.erase(StateID(s.id));

        if (abstract_state_space_.goal_state_flags_[s.id]) {
            auto& g = constraints.emplace_back(-1_vt, -1_vt);
            g.insert(s.id, 1_vt);
        }

        // Generate operators...
        std::vector<const AbstractOperator*> aops;
        abstract_state_space_.match_tree_.get_applicable_operators(s, aops);

        // Select a greedy operators and add its successors
        for (const AbstractOperator* op : aops) {
            auto& constr = constraints.emplace_back(-inf, 0_vt);

            std::unordered_map<StateRank, value_t> successor_dist;

            for (const auto& [eff, prob] : op->outcomes) {
                successor_dist[s + eff] -= prob;
            }

            if (successor_dist.size() == 1 &&
                successor_dist.begin()->first == s) {
                continue;
            }

            successor_dist[s] += 1_vt;

            for (const auto& [succ, prob] : successor_dist) {
                constr.insert(succ.id, prob);

                if (seen.insert(succ).second) {
                    queue.push_back(succ);
                }
            }
        }
    }

    assert(visited.empty());

    solver.load_problem(lp::LinearProgram(
        lp::LPObjectiveSense::MAXIMIZE,
        std::move(variables),
        std::move(constraints),
        inf));

    solver.solve();

    assert(solver.has_optimal_solution());

    std::vector<double> solution = solver.extract_solution();

    for (StateRank s(0); s.id != static_cast<int>(value_table.size()); ++s.id) {
        if (seen.contains(s)) {
            assert(is_approx_equal(solution[s.id], value_table[s.id], 0.001));
        } else {
            assert(0_vt == value_table[s.id]);
        }
    }
}
#endif

} // namespace pdbs
} // namespace heuristics
} // namespace probfd
