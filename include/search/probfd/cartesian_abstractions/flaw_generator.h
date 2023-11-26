#ifndef PROBFD_CARTESIAN_FLAW_GENERATOR_H
#define PROBFD_CARTESIAN_FLAW_GENERATOR_H

#include "probfd/cartesian_abstractions/flaw.h"
#include "probfd/cartesian_abstractions/types.h"

#include <memory>
#include <optional>
#include <vector>

namespace utils {
class CountdownTimer;
class LogProxy;
class Timer;
} // namespace utils

namespace probfd {
class ProbabilisticTaskProxy;

namespace cartesian_abstractions {
class Abstraction;
class CartesianCostFunction;
class CartesianHeuristic;

/**
 * @brief Find flaws in the abstraction.
 */
class FlawGenerator {
public:
    virtual ~FlawGenerator() = default;

    virtual std::optional<Flaw> generate_flaw(
        const ProbabilisticTaskProxy& task_proxy,
        const std::vector<int>& domain_sizes,
        Abstraction& abstraction,
        const AbstractState* init_id,
        CartesianHeuristic& heuristic,
        utils::LogProxy& log,
        utils::CountdownTimer& timer) = 0;

    virtual void notify_split() = 0;

    virtual void print_statistics(utils::LogProxy& log) = 0;
};

class FlawGeneratorFactory {
public:
    virtual ~FlawGeneratorFactory() = default;
    virtual std::unique_ptr<FlawGenerator> create_flaw_generator() = 0;
};

} // namespace cartesian_abstractions
} // namespace probfd

#endif // PROBFD_CARTESIAN_FLAW_GENERATOR_H