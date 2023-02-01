#include "probfd/transition_samplers/vbiased_successor_sampler.h"

#include "probfd/engine_interfaces/heuristic_search_interface.h"

#include "utils/rng.h"
#include "utils/rng_options.h"

#include "operator_id.h"
#include "option_parser.h"
#include "plugin.h"

namespace probfd {
namespace transition_samplers {

VBiasedSuccessorSampler::VBiasedSuccessorSampler(
    std::shared_ptr<utils::RandomNumberGenerator> rng)
    : rng_(rng)
{
}

StateID VBiasedSuccessorSampler::sample(
    const StateID&,
    const OperatorID&,
    const Distribution<StateID>& successors,
    engine_interfaces::HeuristicSearchInterface& hs_interface)
{
    biased_.clear();
    value_t sum = 0;
    for (auto it = successors.begin(); it != successors.end(); ++it) {
        const auto p = it->probability * hs_interface.lookup_value(it->item);
        if (p > 0_vt) {
            sum += p;
            biased_.add(it->item, p);
        }
    }
    if (biased_.empty()) {
        return successors.sample(*rng_)->item;
    }
    biased_.normalize(1_vt / sum);
    return biased_.sample(*rng_)->item;
}

} // namespace transition_samplers
} // namespace probfd