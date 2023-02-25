#ifndef PROBFD_TRANSITION_SAMPLERS_VBIASED_SUCCESSOR_SAMPLER_FACTORY_H
#define PROBFD_TRANSITION_SAMPLERS_VBIASED_SUCCESSOR_SAMPLER_FACTORY_H

#include "probfd/transition_samplers/task_transition_sampler_factory.h"

namespace options {
class Options;
class OptionParser;
} // namespace options

namespace utils {
class RandomNumberGenerator;
}

namespace probfd {

namespace transition_samplers {

class VBiasedSuccessorSamplerFactory : public TaskTransitionSamplerFactory {
    std::shared_ptr<utils::RandomNumberGenerator> rng;

public:
    explicit VBiasedSuccessorSamplerFactory(const options::Options&);
    ~VBiasedSuccessorSamplerFactory() override = default;

    static void add_options_to_parser(options::OptionParser& parser);

    std::shared_ptr<engine_interfaces::TransitionSampler<OperatorID>>
    create_sampler(engine_interfaces::StateSpace<State, OperatorID>*) override;
};

} // namespace transition_samplers
} // namespace probfd

#endif // __VBIASED_SUCCESSOR_SAMPLER_H__