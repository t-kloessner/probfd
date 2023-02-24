#ifndef PROBFD_HEURISTICS_CARTESIAN_SPLIT_SELECTOR_H
#define PROBFD_HEURISTICS_CARTESIAN_SPLIT_SELECTOR_H

#include "probfd/task_proxy.h"

#include "probfd/heuristics/cartesian/types.h"

#include <memory>
#include <vector>

namespace additive_heuristic {
class AdditiveHeuristic;
}

namespace utils {
class RandomNumberGenerator;
}

namespace probfd {
namespace heuristics {
namespace cartesian {

// Strategies for selecting a split in case there are multiple possibilities.
enum class PickSplit {
    RANDOM,
    // Number of values that land in the state whose h-value is probably raised.
    MIN_UNWANTED,
    MAX_UNWANTED,
    // Refinement: - (remaining_values / original_domain_size)
    MIN_REFINED,
    MAX_REFINED,
    // Compare the h^add(s_0) values of the facts.
    MIN_HADD,
    MAX_HADD
};

struct Split {
    const int var_id;
    const std::vector<int> values;

    Split(int var_id, std::vector<int>&& values)
        : var_id(var_id)
        , values(std::move(values))
    {
    }
};

/*
  Select split in case there are multiple possible splits.
*/
class SplitSelector {
    const std::shared_ptr<AbstractTaskBase> task;
    const ProbabilisticTaskProxy task_proxy;
    std::unique_ptr<additive_heuristic::AdditiveHeuristic> additive_heuristic;

    const PickSplit pick;

    int get_num_unwanted_values(const AbstractState& state, const Split& split)
        const;
    double get_refinedness(const AbstractState& state, int var_id) const;
    int get_hadd_value(int var_id, int value) const;
    int get_min_hadd_value(int var_id, const std::vector<int>& values) const;
    int get_max_hadd_value(int var_id, const std::vector<int>& values) const;

    double rate_split(const AbstractState& state, const Split& split) const;

public:
    SplitSelector(
        const std::shared_ptr<ProbabilisticTask>& task,
        PickSplit pick);
    ~SplitSelector();

    const Split& pick_split(
        const AbstractState& state,
        const std::vector<Split>& splits,
        utils::RandomNumberGenerator& rng) const;
};

} // namespace cartesian
} // namespace heuristics
} // namespace probfd

#endif
