#ifndef PROBFD_PDBS_PATTERN_GENERATOR_H
#define PROBFD_PDBS_PATTERN_GENERATOR_H

#include "downward/utils/logging.h"

#include <memory>

// Forward Declarations
namespace probfd {
class ProbabilisticTask;
}

namespace probfd::pdbs {
class PatternInformation;
}

namespace probfd::pdbs {

class PatternGenerator {
protected:
    mutable utils::LogProxy log_;

public:
    explicit PatternGenerator(utils::Verbosity);
    explicit PatternGenerator(utils::LogProxy log);

    virtual ~PatternGenerator() = default;

    virtual PatternInformation
    generate(const std::shared_ptr<ProbabilisticTask>& task) = 0;
};

} // namespace probfd::pdbs

#endif // PROBFD_PDBS_PATTERN_GENERATOR_H
