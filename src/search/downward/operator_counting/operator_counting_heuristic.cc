#include "downward/operator_counting/operator_counting_heuristic.h"

#include "downward/operator_counting/constraint_generator.h"

#include "downward/plugins/plugin.h"
#include "downward/utils/markup.h"

#include <cmath>

using namespace std;

namespace operator_counting {
OperatorCountingHeuristic::OperatorCountingHeuristic(
    const plugins::Options& opts)
    : Heuristic(opts)
    , constraint_generators(opts.get_list<shared_ptr<ConstraintGenerator>>(
          "constraint_generators"))
    , lp_solver(opts.get<lp::LPSolverType>("lpsolver"))
    , use_integer_operator_counts(opts.get<bool>("use_integer_operator_counts"))
{
    lp_solver.set_mip_gap(0);
    named_vector::NamedVector<lp::LPVariable> variables;
    double infinity = lp_solver.get_infinity();
    for (OperatorProxy op : task_proxy.get_operators()) {
        int op_cost = op.get_cost();
        variables.push_back(
            lp::LPVariable(0, infinity, op_cost, use_integer_operator_counts));
    }
    lp::LinearProgram lp(
        lp::LPObjectiveSense::MINIMIZE,
        std::move(variables),
        {},
        infinity);
    for (const auto& generator : constraint_generators) {
        generator->initialize_constraints(task, lp);
    }
    lp_solver.load_problem(lp);
}

OperatorCountingHeuristic::~OperatorCountingHeuristic()
{
}

int OperatorCountingHeuristic::compute_heuristic(const State& ancestor_state)
{
    State state = convert_ancestor_state(ancestor_state);
    assert(!lp_solver.has_temporary_constraints());
    for (const auto& generator : constraint_generators) {
        bool dead_end = generator->update_constraints(state, lp_solver);
        if (dead_end) {
            lp_solver.clear_temporary_constraints();
            return DEAD_END;
        }
    }
    int result;
    lp_solver.solve();
    if (lp_solver.has_optimal_solution()) {
        double epsilon = 0.01;
        double objective_value = lp_solver.get_objective_value();
        result = static_cast<int>(ceil(objective_value - epsilon));
    } else {
        result = DEAD_END;
    }
    lp_solver.clear_temporary_constraints();
    return result;
}

class OperatorCountingHeuristicFeature
    : public plugins::TypedFeature<Evaluator, OperatorCountingHeuristic> {
public:
    OperatorCountingHeuristicFeature()
        : TypedFeature("operatorcounting")
    {
        document_title("Operator-counting heuristic");
        document_synopsis(
            "An operator-counting heuristic computes a linear program (LP) in "
            "each "
            "state. The LP has one variable Count_o for each operator o that "
            "represents how often the operator is used in a plan. Operator-"
            "counting constraints are linear constraints over these varaibles "
            "that "
            "are guaranteed to have a solution with Count_o = occurrences(o, "
            "pi) "
            "for every plan pi. Minimizing the total cost of operators subject "
            "to "
            "some operator-counting constraints is an admissible heuristic. "
            "For details, see" +
            utils::format_conference_reference(
                {"Florian Pommerening",
                 "Gabriele Roeger",
                 "Malte Helmert",
                 "Blai Bonet"},
                "LP-based Heuristics for Cost-optimal Planning",
                "http://www.aaai.org/ocs/index.php/ICAPS/ICAPS14/paper/view/"
                "7892/8031",
                "Proceedings of the Twenty-Fourth International Conference"
                " on Automated Planning and Scheduling (ICAPS 2014)",
                "226-234",
                "AAAI Press",
                "2014"));

        add_list_option<shared_ptr<ConstraintGenerator>>(
            "constraint_generators",
            "methods that generate constraints over operator-counting "
            "variables");
        add_option<bool>(
            "use_integer_operator_counts",
            "restrict operator-counting variables to integer values. Computing "
            "the "
            "heuristic with integer variables can produce higher values but "
            "requires solving a MIP instead of an LP which is generally more "
            "computationally expensive. Turning this option on can thus "
            "drastically "
            "increase the runtime.",
            "false");
        lp::add_lp_solver_option_to_feature(*this);
        Heuristic::add_options_to_feature(*this);

        document_language_support("action costs", "supported");
        document_language_support(
            "conditional effects",
            "not supported (the heuristic supports them in theory, but none of "
            "the currently implemented constraint generators do)");
        document_language_support(
            "axioms",
            "not supported (the heuristic supports them in theory, but none of "
            "the currently implemented constraint generators do)");

        document_property("admissible", "yes");
        document_property(
            "consistent",
            "yes, if all constraint generators represent consistent "
            "heuristics");
        document_property("safe", "yes");
        // TODO: prefer operators that are non-zero in the solution.
        document_property("preferred operators", "no");
    }

    virtual shared_ptr<OperatorCountingHeuristic> create_component(
        const plugins::Options& options,
        const utils::Context& context) const override
    {
        plugins::verify_list_non_empty<shared_ptr<ConstraintGenerator>>(
            context,
            options,
            "constraint_generators");
        return make_shared<OperatorCountingHeuristic>(options);
    }
};

static plugins::FeaturePlugin<OperatorCountingHeuristicFeature> _plugin;
} // namespace operator_counting
