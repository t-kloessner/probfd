#ifndef MDPS_ENGINE_INTERFACES_TRANSITION_SAMPLER_H
#define MDPS_ENGINE_INTERFACES_TRANSITION_SAMPLER_H

#include "probfd/utils/distribution_random_sampler.h"

#include "probfd/distribution.h"
#include "probfd/types.h"

namespace probfd {
namespace engine_interfaces {

class HeuristicSearchInterface;

/**
 * @brief Function object used to sample a possible successor state for the
 * given source state, applied action and successor distribution.
 *
 * @tparam Action - The action type of the underlying MDP model.
 */
template <typename Action>
class TransitionSampler {
public:
    virtual ~TransitionSampler() = default;

    StateID operator()(
        const StateID& state,
        const Action& op,
        const Distribution<StateID>& transition,
        HeuristicSearchInterface& hs_interface)
    {
        return this->sample(state, op, transition, hs_interface);
    }

    virtual void print_statistics(std::ostream&) const {}

protected:
    virtual StateID sample(
        const StateID& state,
        const Action& op,
        const Distribution<StateID>& transition,
        HeuristicSearchInterface& hs_interface) = 0;
};

} // namespace engine_interfaces
} // namespace probfd

class OperatorID;

namespace probfd {
using TaskTransitionSampler = engine_interfaces::TransitionSampler<OperatorID>;
}

#endif // __TRANSITION_SAMPLER_H__