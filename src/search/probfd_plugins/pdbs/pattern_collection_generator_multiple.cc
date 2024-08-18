#include "probfd_plugins/pdbs/pattern_collection_generator_multiple.h"

#include "probfd_plugins/pdbs/pattern_collection_generator.h"

#include "downward/utils/rng_options.h"

#include "downward/plugins/plugin.h"

using namespace std;

namespace probfd_plugins::pdbs {

void add_multiple_options_to_feature(plugins::Feature& feature)
{
    feature.add_option<int>(
        "max_pdb_size",
        "maximum number of states for each pattern database, computed "
        "by compute_pattern (possibly ignored by singleton patterns consisting "
        "of a goal variable)",
        "1M",
        plugins::Bounds("1", "infinity"));
    feature.add_option<int>(
        "max_collection_size",
        "maximum number of states in all pattern databases of the "
        "collection (possibly ignored, see max_pdb_size)",
        "10M",
        plugins::Bounds("1", "infinity"));
    feature.add_option<double>(
        "pattern_generation_max_time",
        "maximum time in seconds for each call to the algorithm for "
        "computing a single pattern",
        "infinity",
        plugins::Bounds("0.0", "infinity"));
    feature.add_option<double>(
        "total_max_time",
        "maximum time in seconds for this pattern collection generator. "
        "It will always execute at least one iteration, i.e., call the "
        "algorithm for computing a single pattern at least once.",
        "100.0",
        plugins::Bounds("0.0", "infinity"));
    feature.add_option<double>(
        "stagnation_limit",
        "maximum time in seconds this pattern generator is allowed to run "
        "without generating a new pattern. It terminates prematurely if this "
        "limit is hit unless enable_blacklist_on_stagnation is enabled.",
        "20.0",
        plugins::Bounds("1.0", "infinity"));
    feature.add_option<double>(
        "blacklist_trigger_percentage",
        "percentage of total_max_time after which blacklisting is enabled",
        "0.75",
        plugins::Bounds("0.0", "1.0"));
    feature.add_option<bool>(
        "enable_blacklist_on_stagnation",
        "if true, blacklisting is enabled when stagnation_limit is hit "
        "for the first time (unless it was already enabled due to "
        "blacklist_trigger_percentage) and pattern generation is terminated "
        "when stagnation_limit is hit for the second time. If false, pattern "
        "generation is terminated already the first time stagnation_limit is "
        "hit.",
        "true");
    feature.add_option<bool>(
        "use_saturated_costs",
        "if true, saturated cost partitioning is used to combine the generated "
        "patterns. In each iteration, costs are decreased by the minimum "
        "saturated cost function of the most recently constructed PDB and the "
        "algorithm continues with the remaining costs. If false, the maximum "
        "PDB estimate is used.",
        "true");
    utils::add_rng_options_to_feature(feature);
    add_pattern_collection_generator_options_to_feature(feature);
}

std::tuple<
    int,
    int,
    double,
    double,
    double,
    double,
    bool,
    bool,
    std::shared_ptr<utils::RandomNumberGenerator>,
    utils::Verbosity>
get_multiple_arguments_from_options(const plugins::Options& options)
{
    return std::tuple_cat(
        std::make_tuple(
            options.get<int>("max_pdb_size"),
            options.get<int>("max_collection_size"),
            options.get<double>("pattern_generation_max_time"),
            options.get<double>("total_max_time"),
            options.get<double>("stagnation_limit"),
            options.get<double>("blacklist_trigger_percentage"),
            options.get<bool>("enable_blacklist_on_stagnation"),
            options.get<bool>("use_saturated_costs"),
            utils::get_rng(
                std::get<0>(utils::get_rng_arguments_from_options(options)))),
        get_collection_generator_arguments_from_options(options));
}

} // namespace probfd_plugins::pdbs
