#ifndef PROBFD_HEURISTICS_PDBS_PATTERN_INFORMATION_H
#define PROBFD_HEURISTICS_PDBS_PATTERN_INFORMATION_H

#include "probfd/heuristics/pdbs/types.h"

#include "probfd/engine_interfaces/cost_function.h"

#include "probfd/task_proxy.h"

#include <memory>

namespace utils {
class LogProxy;
}

namespace probfd {
namespace heuristics {
namespace pdbs {

class PatternInformation {
    ProbabilisticTaskProxy task_proxy;
    Pattern pattern;
    TaskCostFunction* task_cost_function;
    std::shared_ptr<ProbabilisticPatternDatabase> pdb;

    void create_pdb_if_missing();

    bool information_is_valid() const;

public:
    PatternInformation(
        const ProbabilisticTaskProxy& task_proxy,
        TaskCostFunction* task_cost_function,
        Pattern pattern);

    void set_pdb(const std::shared_ptr<ProbabilisticPatternDatabase>& pdb);

    ProbabilisticTaskProxy get_task_proxy() const { return task_proxy; }

    const Pattern& get_pattern() const;
    std::shared_ptr<ProbabilisticPatternDatabase> get_pdb();
};

} // namespace pdbs
} // namespace heuristics
} // namespace probfd

#endif