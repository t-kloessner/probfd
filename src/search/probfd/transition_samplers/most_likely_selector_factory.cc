#include "probfd/transition_samplers/most_likely_selector_factory.h"
#include "probfd/transition_samplers/most_likely_selector.h"

namespace probfd {
namespace transition_samplers {

std::shared_ptr<engine_interfaces::TransitionSampler<OperatorID>>
MostLikelySuccessorSelectorFactory::create_sampler(
    engine_interfaces::StateSpace<State, OperatorID>*)
{
    return std::shared_ptr<MostLikelySuccessorSelector>();
}

} // namespace transition_samplers
} // namespace probfd
