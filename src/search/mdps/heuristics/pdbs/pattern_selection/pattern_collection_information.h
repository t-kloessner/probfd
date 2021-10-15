#pragma once

#include "../../../../operator_cost.h"
#include "../types.h"

#include "../subcollections/subcollection_finder.h"

#include <memory>

namespace probabilistic {
namespace pdbs {
namespace pattern_selection {

/*
  This class contains everything we know about a pattern collection. It will
  always contain patterns, but can also contain the computed PDBs and maximal
  additive subsets of the PDBs. If one of the latter is not available, then
  this information is created when it is requested.
  Ownership of the information is shared between the creators of this class
  (usually PatternCollectionGenerators), the class itself, and its users
  (consumers of pattern collections like heuristics).

  TODO: this should probably re-use PatternInformation and it could also act
  as an interface for ownership transfer rather than sharing it.
*/
template <typename PDBType>
class PatternCollectionInformation {
    std::shared_ptr<PatternCollection> patterns_;
    std::shared_ptr<PPDBCollection<PDBType>> pdbs_;
    std::shared_ptr<std::vector<PatternSubCollection>> subcollections_;

    std::shared_ptr<SubCollectionFinder> subcollection_finder_;

    void create_pdbs_if_missing();
    void create_pattern_cliques_if_missing();

    bool information_is_valid() const;

public:
    PatternCollectionInformation(std::shared_ptr<PatternCollection> patterns);
    PatternCollectionInformation(
        std::shared_ptr<PatternCollection> patterns,
        std::shared_ptr<SubCollectionFinder> subcollection_finder);

    void set_pdbs(const std::shared_ptr<PPDBCollection<PDBType>>& pdbs);
    void
    set_subcollections(const std::shared_ptr<std::vector<PatternSubCollection>>&
                           subcollections);

    std::shared_ptr<PatternCollection> get_patterns() const;
    std::shared_ptr<PPDBCollection<PDBType>> get_pdbs();
    std::shared_ptr<std::vector<PatternSubCollection>> get_subcollections();
};

using ExpCostPatternCollectionInformation =
    PatternCollectionInformation<ExpCostProjection>;

using MaxProbPatternCollectionInformation =
    PatternCollectionInformation<MaxProbProjection>;

} // namespace pattern_selection
} // namespace pdbs
} // namespace probabilistic