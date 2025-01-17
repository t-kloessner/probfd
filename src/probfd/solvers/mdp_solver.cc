#include "probfd/solvers/mdp_solver.h"

#include "probfd/tasks/root_task.h"

#include "probfd/caching_task_state_space.h"

#include "probfd/evaluator.h"
#include "probfd/interval.h"
#include "probfd/mdp_algorithm.h"
#include "probfd/policy.h"
#include "probfd/probabilistic_task.h"
#include "probfd/task_cost_function.h"
#include "probfd/task_evaluator_factory.h"

#include "downward/utils/timer.h"

#include "downward/utils/exceptions.h"

#include <fstream>
#include <iostream>
#include <limits>
#include <optional>

namespace probfd::solvers {

MDPSolver::MDPSolver(
    utils::Verbosity verbosity,
    std::vector<std::shared_ptr<::Evaluator>> path_dependent_evaluators,
    bool cache,
    std::shared_ptr<TaskEvaluatorFactory> heuristic_factory,
    std::optional<value_t> report_epsilon,
    bool report_enabled,
    double max_time,
    std::string policy_filename,
    bool print_fact_names)
    : log_(utils::get_log_for_verbosity(verbosity))
    , task_(tasks::g_root_task)
    , task_mdp_(
          cache ? new CachingTaskStateSpace(
                      task_,
                      log_,
                      std::move(path_dependent_evaluators))
                : new TaskStateSpace(
                      task_,
                      log_,
                      std::move(path_dependent_evaluators)))
    , task_cost_function_(std::make_shared<TaskCostFunction>(task_))
    , heuristic_factory_(std::move(heuristic_factory))
    , progress_(report_epsilon, std::cout, report_enabled)
    , max_time_(max_time)
    , policy_filename(std::move(policy_filename))
    , print_fact_names(print_fact_names)
{
}

MDPSolver::~MDPSolver() = default;

bool MDPSolver::solve()
{
    std::cout << "Running MDP algorithm " << get_algorithm_name();

    if (max_time_ != std::numeric_limits<double>::infinity()) {
        std::cout << " with a time limit of " << max_time_ << " seconds";
    }

    std::cout << " without a time limit." << std::endl;

    try {
        utils::Timer total_timer;

        std::cout << "Constructing algorithm... " << std::endl;

        std::unique_ptr<FDRMDPAlgorithm> algorithm = create_algorithm();

        std::cout << "Done." << std::endl;

        const State& initial_state = task_mdp_->get_initial_state();

        CompositeMDP<State, OperatorID> mdp{*task_mdp_, *task_cost_function_};

        std::cout << "Constructing heuristic... " << std::endl;

        const std::shared_ptr<FDREvaluator> heuristic =
            heuristic_factory_->create_evaluator(task_, task_cost_function_);

        std::cout << "Done." << std::endl;

        std::cout << "Starting analysis... " << std::endl;

        std::unique_ptr<Policy<State, OperatorID>> policy =
            algorithm->compute_policy(
                mdp,
                *heuristic,
                initial_state,
                progress_,
                max_time_);
        total_timer.stop();

        std::cout << "analysis done. [t=" << utils::g_timer << "]" << std::endl;

        std::cout << std::endl;

        if (policy) {
            using namespace std;

            print_analysis_result(
                policy->get_decision(initial_state)->q_value_interval);

            std::ofstream out(policy_filename);
            auto print_state = [this](const State& state, std::ostream& out) {
                if (print_fact_names) {
                    out << state[0].get_name();
                    for (const FactProxy& fact : state | views::drop(1)) {
                        out << ", " << fact.get_name();
                    }
                } else {
                    out << "{ " << state[0].get_variable().get_id() << " -> "
                        << state[0].get_value();

                    for (const FactProxy& fact : state | views::drop(1)) {
                        const auto [var, val] = fact.get_pair();
                        out << ", " << var << " -> " << val;
                    }
                    out << " }";
                }
            };

            auto print_action =
                [this](const OperatorID& op_id, std::ostream& out) {
                    out << this->task_->get_operator_name(op_id.get_index());
                };

            policy->print(out, print_state, print_action);
        }

        std::cout << std::endl;
        std::cout << "State space interface:" << std::endl;
        std::cout << "  Registered state(s): "
                  << task_mdp_->get_num_registered_states() << std::endl;
        task_mdp_->print_statistics();

        std::cout << std::endl;
        std::cout << "Algorithm " << get_algorithm_name()
                  << " statistics:" << std::endl;
        std::cout << "  Actual solver time: " << total_timer << std::endl;
        algorithm->print_statistics(std::cout);

        heuristic->print_statistics();

        print_additional_statistics();

        return policy != nullptr;
    } catch (utils::TimeoutException&) {
        std::cout << "Time limit reached. Analysis was aborted." << std::endl;
    }

    return false;
}

} // namespace probfd::solvers
