#ifndef MDPS_HEURISTICS_PDBS_PATTERN_SELECTION_CEGAR_PATTERN_COLLECTION_GENERATOR_CEGAR_H
#define MDPS_HEURISTICS_PDBS_PATTERN_SELECTION_CEGAR_PATTERN_COLLECTION_GENERATOR_CEGAR_H

#include "../pattern_generator.h"

#include "../../types.h"

#include "../../../../../global_state.h"
#include "../../../../../options/options.h"
#include "../../../../../utils/logging.h"
#include "../../../../../utils/rng.h"
#include "../../../../globals.h"
#include "../../../../probabilistic_operator.h"

#include <string>
#include <unordered_set>
#include <vector>

namespace options {
class OptionParser;
}

namespace utils {
class CountdownTimer;
}

namespace probabilistic {
namespace pdbs {
namespace pattern_selection {

template <typename PDBType>
class AbstractSolutionData;

struct Flaw {
    bool is_goal_violation;
    int solution_index;
    int variable;

    Flaw(bool is_goal_violation, int solution_index, int variable)
        : is_goal_violation(is_goal_violation)
        , solution_index(solution_index)
        , variable(variable)
    {
    }
};

using FlawList = std::vector<Flaw>;

struct ExplicitGState {
    std::vector<int> values;

    ExplicitGState(std::vector<int> values)
        : values(std::move(values))
    {
    }

    size_t get_hash() const
    {
        std::size_t res = 0;
        for (size_t i = 0; i < values.size(); ++i) {
            res += g_variable_domain[i] * values[i];
        }
        return res;
    }

    int& operator[](int i) { return values[i]; }

    const int& operator[](int i) const { return values[i]; }

    ExplicitGState get_successor(const GlobalOperator& op) const
    {
        assert(!op.is_axiom());

        ExplicitGState s(*this);

        for (auto& eff : op.get_effects()) {
            assert(eff.conditions.empty());
            s[eff.var] = eff.val;
        }

        return s;
    }

    bool is_goal() const
    {
        for (auto& [goal_var, goal_val] : g_goal) {
            if (values[goal_var] != goal_val) {
                return false;
            }
        }

        return true;
    }

    friend bool operator==(const ExplicitGState& a, const ExplicitGState& b)
    {
        return a.values == b.values;
    }
};

enum class FlawFinderEnum { PGBFS, BFS, SAMPLING };
enum class InitialCollectionType { GIVEN_GOAL, RANDOM_GOAL, ALL_GOALS };

template <typename PDBType>
class PatternCollectionGeneratorCegar
    : public PatternCollectionGenerator<PDBType> {
    class FlawFindingStrategy {
    protected:
        PatternCollectionGeneratorCegar<PDBType>& base;

    public:
        FlawFindingStrategy(PatternCollectionGeneratorCegar<PDBType>& base);
        virtual ~FlawFindingStrategy() = default;
        virtual FlawList
        apply_policy(int solution_index, const ExplicitGState& init) = 0;
    };

    class ProbabilityGBFS : public FlawFindingStrategy {
    public:
        ProbabilityGBFS(PatternCollectionGeneratorCegar<PDBType>& base);
        ~ProbabilityGBFS() override = default;

        virtual FlawList
        apply_policy(int solution_index, const ExplicitGState& init) override;
    };

    class BFS : public FlawFindingStrategy {
    public:
        BFS(PatternCollectionGeneratorCegar<PDBType>& base);
        ~BFS() override = default;

        virtual FlawList
        apply_policy(int solution_index, const ExplicitGState& init) override;
    };

    class SamplingStrategy : public FlawFindingStrategy {
    public:
        SamplingStrategy(PatternCollectionGeneratorCegar<PDBType>& base);
        ~SamplingStrategy() override = default;

        virtual FlawList
        apply_policy(int solution_index, const ExplicitGState& init) override;
    };

    std::shared_ptr<utils::RandomNumberGenerator> rng;

    std::unique_ptr<FlawFindingStrategy> flaw_strategy;

    // behavior defining parameters
    const int max_refinements;
    const int max_pdb_size;
    const int max_collection_size;

    // set this to true if you want to
    // generate only one pattern
    const bool ignore_goal_violations;

    const bool treat_goal_violations_differently;
    const bool local_blacklisting;
    const int global_blacklist_size;
    const InitialCollectionType initial;
    const int given_goal;
    const utils::Verbosity verbosity;
    const double max_time;

    std::vector<int> remaining_goals;
    std::unordered_set<int> global_blacklist;

    // the pattern collection in form of their pdbs plus stored plans.
    std::vector<std::unique_ptr<AbstractSolutionData<PDBType>>> solutions;

    // Takes a variable as key and returns the index of the solutions-entry
    // whose pattern contains said variable. Used for checking if a variable
    // is already included in some pattern as well as for quickly finding
    // the other partner for merging.
    std::unordered_map<int, int> solution_lookup;

    int collection_size;

    // If the algorithm finds a single solution instance that solves
    // the concrete problem, then it will store its index here.
    // This enables simpler plan extraction later on.
    int concrete_solution_index;

public:
    explicit PatternCollectionGeneratorCegar(const options::Options& opts);

    PatternCollectionGeneratorCegar(
        const std::shared_ptr<utils::RandomNumberGenerator>& arg_rng,
        FlawFinderEnum flaw_finder_val,
        int arg_max_refinements,
        int arg_max_pdb_size,
        int arg_max_collection_size,
        bool arg_ignore_goal_violations,
        bool treat_goal_violations_differently,
        bool arg_local_blacklisting,
        int arg_global_blacklist_size,
        InitialCollectionType arg_initial,
        int given_goal,
        utils::Verbosity verbosity,
        double arg_max_time);

    virtual ~PatternCollectionGeneratorCegar();

    PatternCollectionInformation<PDBType>
    generate(OperatorCost cost_type) override;

private:
    void print_collection() const;
    void generate_trivial_solution_collection();
    bool time_limit_reached(const utils::CountdownTimer& timer) const;
    bool termination_conditions_met(
        const utils::CountdownTimer& timer,
        int refinement_counter) const;

    /*
      Try to apply the specified abstract policy
      in concrete space by starting with the specified state.
      Return the last state that could be reached before the
      solution failed (if the solution did not fail, then the
      returned state is a goal state of the concrete task).
      The second element of the returned pair is a list of variables
      that caused the solution to fail.
     */
    FlawList apply_policy(int solution_index, const ExplicitGState& init);
    FlawList get_flaws();

    // Methods related to refining (and adding patterns to the collection
    // generally).
    void update_goals(int added_var);
    bool can_add_singleton_pattern(int var) const;
    void add_pattern_for_var(int var);
    void handle_goal_violation(const Flaw& flaw);
    bool can_merge_patterns(int index1, int index2) const;
    void merge_patterns(int index1, int index2);
    bool can_add_variable_to_pattern(int index, int var) const;
    void add_variable_to_pattern(int index, int var);
    void handle_precondition_violation(const Flaw& flaw);
    void refine(const FlawList& flaws);
};

extern void add_pattern_collection_generator_cegar_options_to_parser(
    options::OptionParser& parser);

using ExpCostPatternCollectionGeneratorCegar =
    PatternCollectionGeneratorCegar<ExpCostProjection>;
using MaxProbPatternCollectionGeneratorCegar =
    PatternCollectionGeneratorCegar<MaxProbProjection>;

} // namespace pattern_selection
} // namespace pdbs
} // namespace probabilistic

#endif // PDBS_PATTERN_COLLECTION_GENERATOR_CEGAR_H