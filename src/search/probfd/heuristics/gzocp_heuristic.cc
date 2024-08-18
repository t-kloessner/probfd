#include "probfd/heuristics/gzocp_heuristic.h"

#include "probfd/pdbs/pattern_collection_generator.h"
#include "probfd/pdbs/pattern_collection_information.h"
#include "probfd/pdbs/probability_aware_pattern_database.h"
#include "probfd/pdbs/projection_state_space.h"

#include "probfd/task_utils/task_properties.h"

#include "probfd/task_evaluator_factory.h"
#include "probfd/value_type.h"

#include "downward/utils/collections.h"

#include "downward/plugins/plugin.h"

#include "downward/utils/rng.h"
#include "downward/utils/rng_options.h"

#include "downward/task_utils/task_properties.h"

#include <algorithm>
#include <iterator>
#include <set>
#include <utility>

using namespace probfd::pdbs;

namespace probfd::heuristics {

namespace {
class ExplicitTaskCostFunction : public FDRSimpleCostFunction {
    ProbabilisticTaskProxy task_proxy;
    std::vector<value_t> costs;
    std::vector<std::set<int>> affected_vars;

public:
    explicit ExplicitTaskCostFunction(const ProbabilisticTaskProxy& task_proxy)
        : task_proxy(task_proxy)
    {
        const auto operators = task_proxy.get_operators();

        costs.reserve(operators.size());
        affected_vars.reserve(operators.size());

        for (const ProbabilisticOperatorProxy op : operators) {
            costs.push_back(op.get_cost());
            auto& var_set = affected_vars.emplace_back();
            task_properties::get_affected_vars(
                op,
                std::inserter(var_set, var_set.begin()));
        }
    }

    value_t get_action_cost(OperatorID op) override
    {
        return costs[op.get_index()];
    }

    [[nodiscard]]
    bool is_goal(const State& state) const override
    {
        return ::task_properties::is_goal_state(task_proxy, state);
    }

    [[nodiscard]]
    value_t get_non_goal_termination_cost() const override
    {
        return INFINITE_VALUE;
    }

    void decrease_costs(const ProbabilityAwarePatternDatabase& pdb)
    {
        for (size_t op_id = 0; op_id != costs.size(); ++op_id) {
            const bool affects_pdb = utils::have_common_element(
                pdb.get_pattern(),
                affected_vars[op_id]);

            if (affects_pdb) {
                costs[op_id] = 0;
            }
        }
    }

    value_t& operator[](size_t i) { return costs[i]; }
    const value_t& operator[](size_t i) const { return costs[i]; }
};
} // namespace

GZOCPHeuristic::GZOCPHeuristic(
    std::shared_ptr<ProbabilisticTask> task,
    std::shared_ptr<FDRCostFunction> task_cost_function,
    utils::LogProxy log,
    std::shared_ptr<PatternCollectionGenerator> generator,
    OrderingStrategy order,
    std::shared_ptr<utils::RandomNumberGenerator> rng)
    : TaskDependentHeuristic(task, std::move(log))
    , termination_cost_(task_cost_function->get_non_goal_termination_cost())
    , ordering_(order)
    , rng_(rng)
{
    auto pattern_collection_info =
        generator->generate(task, task_cost_function);

    auto patterns = pattern_collection_info.get_patterns();

    pdbs_.reserve(patterns->size());

    switch (ordering_) {
    case RANDOM: rng->shuffle(*patterns); break;

    case SIZE_ASC:
        std::stable_sort(
            patterns->begin(),
            patterns->end(),
            [](const auto& left, const auto& right) {
                return left.size() < right.size();
            });
        break;

    case SIZE_DESC:
        std::stable_sort(
            patterns->begin(),
            patterns->end(),
            [](const auto& left, const auto& right) {
                return left.size() > right.size();
            });
        break;

    case INHERIT:
    default: break;
    }

    ExplicitTaskCostFunction task_costs(task_proxy_);

    const State& initial_state = task_proxy_.get_initial_state();

    for (const Pattern& pattern : *patterns) {
        StateRankingFunction rankingf(task_proxy_.get_variables(), pattern);
        ProjectionStateSpace state_space(
            task_proxy_,
            task_costs,
            rankingf,
            false);
        StateRank init_rank = rankingf.get_abstract_rank(initial_state);
        auto& pdb =
            pdbs_.emplace_back(state_space, std::move(rankingf), init_rank);

        task_costs.decrease_costs(pdb);
    }
}

value_t GZOCPHeuristic::evaluate(const State& state) const
{
    value_t value = 0.0_vt;

    for (const auto& pdb : pdbs_) {
        value_t estimate = pdb.lookup_estimate(state);

        if (estimate == termination_cost_) {
            return estimate;
        }

        value += estimate;
    }

    return value;
}

GZOCPHeuristicFactory::GZOCPHeuristicFactory(
    std::shared_ptr<PatternCollectionGenerator> pattern_collection_generator,
    GZOCPHeuristic::OrderingStrategy ordering,
    int random_seed_,
    utils::Verbosity verbosity)
    : pattern_collection_generator_(std::move(pattern_collection_generator))
    , ordering_(ordering)
    , random_seed_(random_seed_)
    , verbosity_(verbosity)
{
}

std::unique_ptr<FDREvaluator> GZOCPHeuristicFactory::create_evaluator(
    std::shared_ptr<ProbabilisticTask> task,
    std::shared_ptr<FDRCostFunction> task_cost_function)
{
    return std::make_unique<GZOCPHeuristic>(
        task,
        task_cost_function,
        utils::get_log_for_verbosity(verbosity_),
        pattern_collection_generator_,
        ordering_,
        utils::get_rng(random_seed_));
}

} // namespace probfd::heuristics
