#include "probfd/solvers/mdp_heuristic_search.h"

#include "probfd/engines/lrtdp.h"

#include "probfd/utils/logging.h"

#include "probfd/engine_interfaces/transition_sampler.h"
#include "probfd/transition_sampler/task_transition_sampler_factory.h"

#include "option_parser.h"
#include "plugin.h"

namespace probfd {
namespace solvers {

using namespace engine_interfaces;
using namespace engines::lrtdp;

template <typename Bisimulation, typename Fret>
class LRTDPSolver : public MDPHeuristicSearch<Bisimulation, Fret> {
public:
    template <typename T>
    using WrappedType =
        typename MDPHeuristicSearch<Bisimulation, Fret>::template WrappedType<
            T>;

    template <typename State, typename Action, typename Bounds>
    using LRTDP = LRTDP<State, Action, Bounds, Fret>;

    explicit LRTDPSolver(const options::Options& opts)
        : MDPHeuristicSearch<Bisimulation, Fret>(opts)
        , stop_consistent_(
              opts.get<TrialTerminationCondition>("terminate_trial"))
        , successor_sampler_(this->wrap(
              opts.get<std::shared_ptr<TaskTransitionSamplerFactory>>(
                      "successor_sampler")
                  ->create_sampler(
                      this->get_state_id_map(),
                      this->get_action_id_map())))
    {
        if constexpr (Fret::value) {
            if (stop_consistent_ != TrialTerminationCondition::Consistent) {
                logging::out << std::endl;
                logging::out
                    << "Warning: LRTDP is run within FRET without "
                       "stop_consistent being enabled! LRTDP's trials may "
                       "get stuck in cycles."
                    << std::endl;
            }
        }
    }

    virtual std::string get_heuristic_search_name() const override
    {
        return "lrtdp";
    }

    virtual engines::MDPEngineInterface<State>*
    create_engine() override
    {
        return this->template heuristic_search_engine_factory<LRTDP>(
            stop_consistent_,
            successor_sampler_.get());
    }

protected:
    virtual void print_additional_statistics() const override
    {
        auto ts = this->unwrap(successor_sampler_);
        if (ts != nullptr) {
            ts->print_statistics(logging::out);
        }
        MDPHeuristicSearch<Bisimulation, Fret>::print_additional_statistics();
    }

    const TrialTerminationCondition stop_consistent_;
    WrappedType<std::shared_ptr<TaskTransitionSampler>> successor_sampler_;
};

struct LRTDPOptions {
    void operator()(options::OptionParser& parser) const
    {
        parser.add_option<std::shared_ptr<TaskTransitionSamplerFactory>>(
            "successor_sampler",
            "",
            "random_successor_sampler_factory");
        {
            std::vector<std::string> opts(
                {"false", "consistent", "inconsistent"});
            parser.add_enum_option<TrialTerminationCondition>(
                "terminate_trial",
                opts,
                "",
                "false");
        }
    }
};

static Plugin<SolverInterface> _plugin(
    "lrtdp",
    parse_mdp_heuristic_search_solver<LRTDPSolver, LRTDPOptions>);

} // namespace solvers
} // namespace probfd
