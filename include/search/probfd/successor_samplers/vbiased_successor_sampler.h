#ifndef PROBFD_SUCCESSOR_SAMPLERS_VBIASED_SUCCESSOR_SAMPLER_H
#define PROBFD_SUCCESSOR_SAMPLERS_VBIASED_SUCCESSOR_SAMPLER_H

#include "probfd/engines/fdr_types.h"
#include "probfd/engines/successor_sampler.h"

#include "probfd/distribution.h"

#include "downward/operator_id.h"

#include <memory>

namespace utils {
class RandomNumberGenerator;
}

namespace probfd {

namespace successor_samplers {

class VBiasedSuccessorSampler : public FDRSuccessorSampler {
    Distribution<StateID> biased_;
    std::shared_ptr<utils::RandomNumberGenerator> rng_;

public:
    explicit VBiasedSuccessorSampler(
        std::shared_ptr<utils::RandomNumberGenerator> rng);

protected:
    StateID sample(
        StateID state,
        OperatorID op,
        const Distribution<StateID>& successors,
        engines::StateProperties& properties) override;
};

} // namespace successor_samplers
} // namespace probfd

#endif // __VBIASED_SUCCESSOR_SAMPLER_H__