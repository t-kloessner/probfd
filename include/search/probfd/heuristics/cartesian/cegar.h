#ifndef PROBFD_HEURISTICS_CARTESIAN_CEGAR_H
#define PROBFD_HEURISTICS_CARTESIAN_CEGAR_H

#include "probfd/heuristics/cartesian/abstract_search.h"
#include "probfd/heuristics/cartesian/engine_interfaces.h"
#include "probfd/heuristics/cartesian/split_selector.h"

#include "probfd/task_proxy.h"

#include "utils/countdown_timer.h"

#include <memory>
#include <optional>

namespace utils {
class RandomNumberGenerator;
class LogProxy;
} // namespace utils

namespace probfd {
namespace heuristics {
namespace cartesian {

class Abstraction;

/*
  Iteratively refine a Cartesian abstraction with counterexample-guided
  abstraction refinement (CEGAR).

  Store the abstraction, use AbstractSearch to find abstract solutions, find
  flaws, use SplitSelector to select splits in case of ambiguities and break
  spurious solutions.
*/
class CEGAR {
    struct Flaw;

    const ProbabilisticTaskProxy task_proxy;
    const std::vector<int> domain_sizes;
    const int max_states;
    const int max_non_looping_transitions;
    const SplitSelector split_selector;

    std::unique_ptr<Abstraction> abstraction;
    CartesianCostFunction cost_function;

    AbstractSearch abstract_search;

    // Limit the time for building the abstraction.
    utils::CountdownTimer timer;

    utils::LogProxy& log;

    bool may_keep_refining() const;

    /*
      Map all states that can only be reached after reaching the goal
      fact to arbitrary goal states.

      We need this method only for landmark subtasks, but calling it
      for other subtasks with a single goal fact doesn't hurt and
      simplifies the implementation.
    */
    void separate_facts_unreachable_before_goal();

    /* Try to convert the abstract solution into a concrete trace. Return the
       first encountered flaw or nullptr if there is no flaw. */
    std::optional<Flaw> find_flaw(Solution& solution);

    // Build abstraction.
    void refinement_loop(utils::RandomNumberGenerator& rng);

    void print_statistics();

public:
    CEGAR(
        const std::shared_ptr<ProbabilisticTask>& task,
        int max_states,
        int max_non_looping_transitions,
        double max_time,
        PickSplit pick,
        utils::RandomNumberGenerator& rng,
        utils::LogProxy& log);
    ~CEGAR();

    CEGAR(const CEGAR&) = delete;

    std::unique_ptr<Abstraction> extract_abstraction();

    CartesianHeuristic& get_heuristic();
};

} // namespace cartesian
} // namespace heuristics
} // namespace probfd

#endif
