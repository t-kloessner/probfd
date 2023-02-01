#include "probfd/solver_interface.h"

#include "plugin.h"

#include <iomanip>

namespace probfd {

void SolverInterface::print_value(std::ostream& o, value_t value)
{
    o << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
      << value;
}

void SolverInterface::print_analysis_result(
    value_t result,
    std::optional<value_t> error)
{
    std::cout << "Analysis result:" << std::endl;
    print_initial_state_value(result, 2);
    std::cout << "  Estimated value error: ";
    if (error) {
        print_value(std::cout, *error);
    } else {
        std::cout << "unknown";
    }
    std::cout << std::endl;
}

void SolverInterface::print_initial_state_value(value_t value, int spaces)
{
    for (int i = 0; i < spaces; ++i)
        std::cout << " ";
    std::cout << "Value computed for s0: ";
    print_value(std::cout, value);
    std::cout << std::endl;
}

static PluginTypePlugin<SolverInterface> _type_plugin(
    "SolverInterface",
    // TODO: Replace empty string by synopsis for the wiki page.
    "");

} // namespace probfd