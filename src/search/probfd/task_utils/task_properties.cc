#include "probfd/task_utils/task_properties.h"

#include "utils/logging.h"
#include "utils/memory.h"
#include "utils/system.h"

#include "legacy/global_operator.h"
#include "legacy/globals.h"

#include <algorithm>
#include <iostream>
#include <limits>

using namespace std;
using utils::ExitCode;

namespace probfd {
namespace task_properties {

static int
get_first_conditional_effects_op_id(const ProbabilisticTaskProxy& task)
{
    for (ProbabilisticOperatorProxy op : task.get_operators()) {
        for (ProbabilisticOutcomeProxy outcome : op.get_outcomes()) {
            for (ProbabilisticEffectProxy effect : outcome.get_effects()) {
                if (!effect.get_conditions().empty()) return op.get_id();
            }
        }
    }
    return -1;
}

bool has_conditional_effects(const ProbabilisticTaskProxy& task)
{
    return get_first_conditional_effects_op_id(task) != -1;
}

void verify_no_conditional_effects(const ProbabilisticTaskProxy& task)
{
    int op_id = get_first_conditional_effects_op_id(task);
    if (op_id != -1) {
        ProbabilisticOperatorProxy op = task.get_operators()[op_id];
        cerr << "This configuration does not support conditional effects "
             << "(operator " << op.get_name() << ")!" << endl
             << "Terminating." << endl;
        utils::exit_with(ExitCode::SEARCH_UNSUPPORTED);
    }
}

int get_num_total_effects(const TaskProxy& task_proxy)
{
    int num_effects = 0;
    for (OperatorProxy op : task_proxy.get_operators())
        num_effects += op.get_effects().size();
    num_effects += task_proxy.get_axioms().size();
    return num_effects;
}

void dump_task(const TaskProxy& task_proxy)
{
    OperatorsProxy operators = task_proxy.get_operators();
    int min_action_cost = numeric_limits<int>::max();
    int max_action_cost = 0;
    for (OperatorProxy op : operators) {
        min_action_cost = min(min_action_cost, op.get_cost());
        max_action_cost = max(max_action_cost, op.get_cost());
    }
    utils::g_log << "Min action cost: " << min_action_cost << endl;
    utils::g_log << "Max action cost: " << max_action_cost << endl;

    VariablesProxy variables = task_proxy.get_variables();
    utils::g_log << "Variables (" << variables.size() << "):" << endl;
    for (VariableProxy var : variables) {
        utils::g_log << "  " << var.get_name() << " (range "
                     << var.get_domain_size() << ")" << endl;
        for (int val = 0; val < var.get_domain_size(); ++val) {
            utils::g_log << "    " << val << ": "
                         << var.get_fact(val).get_name() << endl;
        }
    }
    State initial_state = task_proxy.get_initial_state();
    utils::g_log << "Initial state (PDDL):" << endl;
    ::task_properties::dump_pddl(initial_state);
    utils::g_log << "Initial state (FDR):" << endl;
    ::task_properties::dump_fdr(initial_state);
    ::task_properties::dump_goals(task_proxy.get_goals());
}

} // namespace task_properties
} // namespace probfd