#ifndef PROBFD_HEURISTICS_PDBS_SUBCOLLECTION_FINDER_H
#define PROBFD_HEURISTICS_PDBS_SUBCOLLECTION_FINDER_H

#include "probfd/heuristics/pdbs/types.h"

#include <memory>
#include <vector>

namespace probfd {
class ProbabilisticTaskProxy;

namespace heuristics {
namespace pdbs {

class SubCollectionFinder {
public:
    virtual ~SubCollectionFinder() = default;

    virtual std::shared_ptr<std::vector<PatternSubCollection>>
    compute_subcollections(const PatternCollection&) = 0;

    virtual std::vector<PatternSubCollection>
    compute_subcollections_with_pattern(
        const PatternCollection& patterns,
        const std::vector<PatternSubCollection>& known_pattern_cliques,
        const Pattern& new_pattern) = 0;
    };

    } // namespace pdbs
    } // namespace heuristics
} // namespace probfd
#endif // __SUBCOLLECTION_FINDER_H__