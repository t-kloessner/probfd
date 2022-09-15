#ifndef MDPS_HEURISTICS_PDBS_SUBCOLLECTIONS_ORTHOGONALITY_H
#define MDPS_HEURISTICS_PDBS_SUBCOLLECTIONS_ORTHOGONALITY_H

#include "probfd/heuristics/pdbs/types.h"

#include <vector>

namespace probfd {

class ProbabilisticOperator;

namespace heuristics {
namespace pdbs {

std::vector<int>
get_affected_vars(const ProbabilisticOperator& op, bool ignore_deterministic);

VariableOrthogonality
compute_prob_orthogonal_vars(bool ignore_deterministic = false);

std::vector<std::vector<int>> build_compatibility_graph_orthogonality(
    const PatternCollection& patterns,
    bool ignore_deterministic = false);

std::vector<std::vector<int>> build_compatibility_graph_orthogonality(
    const PatternCollection& patterns,
    const VariableOrthogonality& var_orthogonality);

} // namespace pdbs
} // namespace heuristics
} // namespace probfd

#endif // __ORTHOGONALITY_H__