#ifndef PROBFD_HEURISTICS_PDBS_EVALUATORS_H
#define PROBFD_HEURISTICS_PDBS_EVALUATORS_H

#include "probfd/heuristics/pdbs/state_rank.h"

#include "probfd/evaluator.h"
#include "probfd/fdr_types.h"

#include <vector>

namespace pdbs {
class PatternDatabase;
}

namespace probfd {
class ProbabilisticTaskProxy;

namespace heuristics {
namespace pdbs {

class StateRankingFunction;
class ProbabilityAwarePatternDatabase;

/// Type alias for heuristics for projection states.
using StateRankEvaluator = Evaluator<StateRank>;

class PDBEvaluator : public StateRankEvaluator {
    const ::pdbs::PatternDatabase& pdb;

public:
    explicit PDBEvaluator(const ::pdbs::PatternDatabase& pdb);

    value_t evaluate(StateRank state) const override;
};

class DeadendPDBEvaluator : public StateRankEvaluator {
    const ::pdbs::PatternDatabase& pdb;

public:
    explicit DeadendPDBEvaluator(const ::pdbs::PatternDatabase& pdb);

    value_t evaluate(StateRank state) const override;
};

class IncrementalPPDBEvaluator : public StateRankEvaluator {
    const ProbabilityAwarePatternDatabase& pdb;

    int left_multiplier;
    int right_multiplier;
    int domain_size;

public:
    explicit IncrementalPPDBEvaluator(
        const ProbabilityAwarePatternDatabase& pdb,
        const StateRankingFunction* mapper,
        int add_var);

    value_t evaluate(StateRank state) const override;

private:
    StateRank to_parent_state(StateRank state) const;
};

class MergeEvaluator : public StateRankEvaluator {
    const StateRankingFunction& mapper;
    const ProbabilityAwarePatternDatabase& left;
    const ProbabilityAwarePatternDatabase& right;
    const value_t termination_cost;

public:
    MergeEvaluator(
        const StateRankingFunction& mapper,
        const ProbabilityAwarePatternDatabase& left,
        const ProbabilityAwarePatternDatabase& right,
        value_t termination_cost);

    value_t evaluate(StateRank state) const override;

private:
    StateRank convert(
        StateRank state_rank,
        const StateRankingFunction& refined_mapping,
        const StateRankingFunction& coarser_mapping) const;
};

class IncrementalValueTableEvaluator : public StateRankEvaluator {
    std::vector<value_t> current_value_table;

public:
    explicit IncrementalValueTableEvaluator(int initial_size);

    value_t evaluate(StateRank state) const override;

    void on_refinement(const StateRankingFunction& mapper, int add_var);

    std::vector<value_t>& get_value_table();
};

} // namespace pdbs
} // namespace heuristics
} // namespace probfd

#endif // __EVALUATORS_H__