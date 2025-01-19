#include "downward/cli/merge_and_shrink/merge_and_shrink_algorithm_options.h"

#include "downward/cli/plugins/plugin.h"

#include "downward/merge_and_shrink/types.h"

#include "downward/utils/logging.h"
#include "downward/utils/math.h"

#include <vector>

using namespace std;
using namespace merge_and_shrink;

using namespace downward::cli::plugins;

namespace downward::cli::merge_and_shrink {

void add_merge_and_shrink_algorithm_options_to_feature(Feature& feature)
{
    // Merge strategy option.
    feature.add_option<shared_ptr<MergeStrategyFactory>>(
        "merge_strategy",
        "See detailed documentation for merge strategies. "
        "We currently recommend SCC-DFP, which can be achieved using "
        "{{{merge_strategy=merge_sccs(order_of_sccs=topological,merge_selector="
        "score_based_filtering(scoring_functions=[goal_relevance,dfp,total_"
        "order"
        "]))}}}");

    // Shrink strategy option.
    feature.add_option<shared_ptr<ShrinkStrategy>>(
        "shrink_strategy",
        "See detailed documentation for shrink strategies. "
        "We currently recommend non-greedy shrink_bisimulation, which can be "
        "achieved using "
        "{{{shrink_strategy=shrink_bisimulation(greedy=false)}}}");

    // Label reduction option.
    feature.add_option<shared_ptr<LabelReduction>>(
        "label_reduction",
        "See detailed documentation for labels. There is currently only "
        "one 'option' to use label_reduction, which is "
        "{{{label_reduction=exact}}} "
        "Also note the interaction with shrink strategies.",
        ArgumentInfo::NO_DEFAULT);

    // Pruning options.
    feature.add_option<bool>(
        "prune_unreachable_states",
        "If true, prune abstract states unreachable from the initial state.",
        "true");
    feature.add_option<bool>(
        "prune_irrelevant_states",
        "If true, prune abstract states from which no goal state can be "
        "reached.",
        "true");

    add_transition_system_size_limit_options_to_feature(feature);

    feature.add_option<double>(
        "main_loop_max_time",
        "A limit in seconds on the runtime of the main loop of the algorithm. "
        "If the limit is exceeded, the algorithm terminates, potentially "
        "returning a factored transition system with several factors. Also "
        "note that the time limit is only checked between transformations "
        "of the main loop, but not during, so it can be exceeded if a "
        "transformation is runtime-intense.",
        "infinity",
        Bounds("0.0", "infinity"));
}

tuple<
    shared_ptr<MergeStrategyFactory>,
    shared_ptr<ShrinkStrategy>,
    shared_ptr<LabelReduction>,
    bool,
    bool,
    int,
    int,
    int,
    double>
get_merge_and_shrink_algorithm_arguments_from_options(const Options& opts)
{
    return tuple_cat(
        make_tuple(
            opts.get<shared_ptr<MergeStrategyFactory>>("merge_strategy"),
            opts.get<shared_ptr<ShrinkStrategy>>("shrink_strategy"),
            opts.get<shared_ptr<LabelReduction>>("label_reduction", nullptr),
            opts.get<bool>("prune_unreachable_states"),
            opts.get<bool>("prune_irrelevant_states")),
        get_transition_system_size_limit_arguments_from_options(opts),
        make_tuple(opts.get<double>("main_loop_max_time")));
}

void add_transition_system_size_limit_options_to_feature(Feature& feature)
{
    feature.add_option<int>(
        "max_states",
        "maximum transition system size allowed at any time point.",
        "-1",
        Bounds("-1", "infinity"));
    feature.add_option<int>(
        "max_states_before_merge",
        "maximum transition system size allowed for two transition systems "
        "before being merged to form the synchronized product.",
        "-1",
        Bounds("-1", "infinity"));
    feature.add_option<int>(
        "threshold_before_merge",
        "If a transition system, before being merged, surpasses this soft "
        "transition system size limit, the shrink strategy is called to "
        "possibly shrink the transition system.",
        "-1",
        Bounds("-1", "infinity"));
}

tuple<int, int, int>
get_transition_system_size_limit_arguments_from_options(const Options& opts)
{
    return make_tuple(
        opts.get<int>("max_states"),
        opts.get<int>("max_states_before_merge"),
        opts.get<int>("threshold_before_merge"));
}

void handle_shrink_limit_options_defaults(
    Options& opts,
    const utils::Context& context)
{
    int max_states = opts.get<int>("max_states");
    int max_states_before_merge = opts.get<int>("max_states_before_merge");
    int threshold = opts.get<int>("threshold_before_merge");

    // If none of the two state limits has been set: set default limit.
    if (max_states == -1 && max_states_before_merge == -1) {
        max_states = 50000;
    }

    // If exactly one of the max_states options has been set, set the other
    // so that it imposes no further limits.
    if (max_states_before_merge == -1) {
        max_states_before_merge = max_states;
    } else if (max_states == -1) {
        int n = max_states_before_merge;
        if (utils::is_product_within_limit(n, n, INF)) {
            max_states = n * n;
        } else {
            max_states = INF;
        }
    }

    if (max_states_before_merge > max_states) {
        context.warn(
            "warning: max_states_before_merge exceeds max_states, correcting.");
        max_states_before_merge = max_states;
    }

    if (max_states < 1) {
        context.error("Transition system size must be at least 1");
    }

    if (max_states_before_merge < 1) {
        context.error("Transition system size before merge must be at least 1");
    }

    if (threshold == -1) {
        threshold = max_states;
    }
    if (threshold < 1) {
        context.error("Threshold must be at least 1");
    }
    if (threshold > max_states) {
        context.warn("warning: threshold exceeds max_states, correcting");
        threshold = max_states;
    }

    opts.set<int>("max_states", max_states);
    opts.set<int>("max_states_before_merge", max_states_before_merge);
    opts.set<int>("threshold_before_merge", threshold);
}

} // namespace downward::cli::merge_and_shrink