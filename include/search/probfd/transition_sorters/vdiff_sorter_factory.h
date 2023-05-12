#ifndef PROBFD_TRANSITION_SORTERS_VDIFF_SORTER_FACTORY_H
#define PROBFD_TRANSITION_SORTERS_VDIFF_SORTER_FACTORY_H

#include "probfd/transition_sorters/task_transition_sorter_factory.h"

#include "probfd/value_type.h"

namespace options {
class Options;
class OptionParser;
} // namespace options

namespace probfd {

/// This namespace contains implementations of successor sorting algorithms.
namespace transition_sorters {

class VDiffSorterFactory : public TaskTransitionSorterFactory {
    const value_t favor_large_gaps_;

public:
    explicit VDiffSorterFactory(const options::Options&);
    ~VDiffSorterFactory() override = default;

    static void add_options_to_parser(options::OptionParser&);

    std::shared_ptr<engine_interfaces::TransitionSorter<OperatorID>>
    create_transition_sorter(
        engine_interfaces::StateSpace<State, OperatorID>* state_space) override;
};

} // namespace transition_sorters
} // namespace probfd

#endif // __VDIFF_TIEBREAKER_H__