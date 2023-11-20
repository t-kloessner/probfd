#ifndef PROBFD_HEURISTICS_MERGE_AND_SHRINK_NULL_PRUNING_STRATEGY_H
#define PROBFD_HEURISTICS_MERGE_AND_SHRINK_NULL_PRUNING_STRATEGY_H

#include "probfd/merge_and_shrink/pruning_strategy.h"

namespace probfd::merge_and_shrink {

/*
  A pruning strategy specifies which states from a factor are pruned in between
  merge steps.
*/
class NullPruningStrategy : public PruningStrategy {
public:
    StateEquivalenceRelation compute_pruning_abstraction(
        const TransitionSystem& ts,
        const Distances& distances,
        utils::LogProxy& log) override;

    bool requires_init_distances() const override;
    bool requires_goal_distances() const override;

    void dump_options(utils::LogProxy& log) const override;
};

} // namespace probfd::merge_and_shrink

#endif // PROBFD_HEURISTICS_MERGE_AND_SHRINK_NULL_PRUNING_STRATEGY_H
