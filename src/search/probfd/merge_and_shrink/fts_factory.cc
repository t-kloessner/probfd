#include "probfd/merge_and_shrink/fts_factory.h"

#include "probfd/merge_and_shrink/distances.h"
#include "probfd/merge_and_shrink/factored_transition_system.h"
#include "probfd/merge_and_shrink/labels.h"
#include "probfd/merge_and_shrink/merge_and_shrink_representation.h"
#include "probfd/merge_and_shrink/transition_system.h"

#include "probfd/task_proxy.h"
#include "probfd/value_type.h"

#include "downward/utils/collections.h"
#include "downward/utils/logging.h"

#include <cassert>
#include <unordered_map>
#include <vector>

using namespace std;

namespace probfd::merge_and_shrink {

static unordered_map<int, int>
compute_preconditions(ProbabilisticOperatorProxy op)
{
    unordered_map<int, int> pre_val;
    for (FactProxy precondition : op.get_preconditions())
        pre_val[precondition.get_variable().get_id()] =
            precondition.get_value();
    return pre_val;
}

class FTSFactory {
    const ProbabilisticTaskProxy& task_proxy;

    struct TransitionSystemData {
        // The following two attributes are only used for statistics
        int num_variables;
        vector<int> incorporated_variables;

        vector<int> label_to_local_label;
        vector<LocalLabelInfo> local_label_infos;
        vector<bool> relevant_labels;
        int num_states;
        vector<bool> goal_states;
        int init_state;

        TransitionSystemData() = default;
        TransitionSystemData(const TransitionSystemData& other) = delete;
        TransitionSystemData&
        operator=(const TransitionSystemData& other) = delete;
        TransitionSystemData(TransitionSystemData&& other) = default;
        TransitionSystemData& operator=(TransitionSystemData&& other) = delete;
    };

    vector<TransitionSystemData> transition_system_data_by_var;
    // see TODO in build_transitions()
    int task_has_conditional_effects;

private:
    unique_ptr<Labels> create_labels();
    void build_state_data(VariableProxy var);
    void initialize_transition_system_data(const Labels& labels);
    bool is_relevant(int var_no, int label_no) const;
    void mark_as_relevant(int var_no, int label_no);
    void handle_operator_effect(
        OperatorProxy op,
        EffectProxy effect,
        const unordered_map<int, int>& pre_val,
        vector<bool>& has_effect_on_var,
        vector<vector<Transition>>& transitions_by_var);
    void handle_operator_precondition(
        OperatorProxy op,
        FactProxy precondition,
        const vector<bool>& has_effect_on_var,
        vector<vector<Transition>>& transitions_by_var);
    void build_transitions_for_operator(ProbabilisticOperatorProxy op);
    void build_transitions_for_irrelevant_ops(
        VariableProxy variable,
        const Labels& labels);
    void build_transitions(const Labels& labels);
    vector<unique_ptr<TransitionSystem>>
    create_transition_systems(const Labels& labels);
    vector<unique_ptr<MergeAndShrinkRepresentation>>
    create_mas_representations() const;
    vector<unique_ptr<Distances>> create_distances(
        const vector<unique_ptr<TransitionSystem>>& transition_systems) const;

public:
    explicit FTSFactory(const ProbabilisticTaskProxy& task_proxy);

    /*
      Note: create() may only be called once. We don't worry about
      misuse because the class is only used internally in this file.
    */
    FactoredTransitionSystem create(
        bool compute_init_distances,
        bool compute_goal_distances,
        utils::LogProxy& log);
};

FTSFactory::FTSFactory(const ProbabilisticTaskProxy& task_proxy)
    : task_proxy(task_proxy)
    , task_has_conditional_effects(false)
{
}

unique_ptr<Labels> FTSFactory::create_labels()
{
    vector<value_t> label_costs;
    ProbabilisticOperatorsProxy ops = task_proxy.get_operators();
    int num_ops = ops.size();
    int max_num_labels = 0;
    if (num_ops > 0) {
        max_num_labels = 2 * num_ops - 1;
        label_costs.reserve(max_num_labels);
        for (ProbabilisticOperatorProxy op : ops) {
            label_costs.push_back(op.get_cost());
        }
    }
    return std::make_unique<Labels>(std::move(label_costs), max_num_labels);
}

void FTSFactory::build_state_data(VariableProxy var)
{
    int var_id = var.get_id();
    TransitionSystemData& ts_data = transition_system_data_by_var[var_id];
    ts_data.init_state = task_proxy.get_initial_state()[var_id].get_value();

    int range = task_proxy.get_variables()[var_id].get_domain_size();
    ts_data.num_states = range;

    int goal_value = -1;
    GoalsProxy goals = task_proxy.get_goals();
    for (FactProxy goal : goals) {
        if (goal.get_variable().get_id() == var_id) {
            assert(goal_value == -1);
            goal_value = goal.get_value();
            break;
        }
    }

    ts_data.goal_states.resize(range, false);
    for (int value = 0; value < range; ++value) {
        if (value == goal_value || goal_value == -1) {
            ts_data.goal_states[value] = true;
        }
    }
}

void FTSFactory::initialize_transition_system_data(const Labels& labels)
{
    VariablesProxy variables = task_proxy.get_variables();
    transition_system_data_by_var.resize(variables.size());
    for (VariableProxy var : variables) {
        TransitionSystemData& ts_data =
            transition_system_data_by_var[var.get_id()];
        ts_data.num_variables = variables.size();
        ts_data.incorporated_variables.push_back(var.get_id());
        ts_data.label_to_local_label.resize(labels.get_max_num_labels(), -1);
        ts_data.relevant_labels.resize(labels.get_num_total_labels(), false);
        build_state_data(var);
    }
}

bool FTSFactory::is_relevant(int var_no, int label_no) const
{
    return transition_system_data_by_var[var_no].relevant_labels[label_no];
}

void FTSFactory::mark_as_relevant(int var_no, int label_no)
{
    transition_system_data_by_var[var_no].relevant_labels[label_no] = true;
}

void FTSFactory::build_transitions_for_operator(ProbabilisticOperatorProxy op)
{
    /*
      - Mark op as relevant in the transition systems corresponding
        to variables on which it has a precondition or effect.
      - Add transitions induced by op in these transition systems.
    */
    const int label = op.get_id();
    const value_t label_cost = op.get_cost();

    unordered_map<int, int> pre_val = compute_preconditions(op);
    const int num_variables = task_proxy.get_variables().size();
    vector<bool> has_effect_on_var(num_variables, false);
    vector<vector<Transition>> transitions_by_var(num_variables);

    const auto outcomes = op.get_outcomes();
    const auto num_outcomes = outcomes.size();

    for (size_t e = 0; e != num_outcomes; ++e) {
        const auto outcome = outcomes[e];
        for (const auto effect : outcome.get_effects()) {
            FactProxy fact = effect.get_fact();
            VariableProxy post_var = fact.get_variable();
            const int post_value = fact.get_value();
            int var_no = post_var.get_id();

            auto& var_transitions = transitions_by_var[var_no];

            vector<Transition>::iterator first, last;

            auto pre_val_it = pre_val.find(post_var.get_id());

            if (pre_val_it != pre_val.end()) {
                // Upon first encounter of post_var, generate uniform self-loop
                // transition from precondition value
                if (!has_effect_on_var[var_no]) {
                    has_effect_on_var[var_no] = true;
                    mark_as_relevant(var_no, label);
                    int src = pre_val_it->second;
                    var_transitions.emplace_back(
                        src,
                        std::vector<int>(num_outcomes, src));
                }
                first = var_transitions.end() - 1;
                last = var_transitions.end();
            } else {
                // Upon first encounter of post_var, generate uniform self-loop
                // transitions for all possible source values
                if (!has_effect_on_var[var_no]) {
                    has_effect_on_var[var_no] = true;
                    mark_as_relevant(var_no, label);
                    for (int src = 0; src < post_var.get_domain_size(); ++src) {
                        var_transitions.emplace_back(
                            src,
                            std::vector<int>(num_outcomes, src));
                    }
                }
                first = var_transitions.end() - post_var.get_domain_size();
                last = var_transitions.end();
            }

            // Set the target of this outcome, for all transitions generated
            // from this operator
            for (auto it = first; it != last; ++it) {
                it->targets[e] = post_value;
            }
        }
    }

    /*
      We must handle preconditions *after* effects because handling
      the effects sets has_effect_on_var.
    */
    for (FactProxy precondition : op.get_preconditions()) {
        int var_no = precondition.get_variable().get_id();
        if (!has_effect_on_var[var_no]) {
            int value = precondition.get_value();
            transitions_by_var[var_no].emplace_back(
                value,
                std::vector<int>(num_outcomes, value));
            mark_as_relevant(var_no, label);
        }
    }

    for (int var_no = 0; var_no < num_variables; ++var_no) {
        if (!is_relevant(var_no, label)) {
            /*
              We do not want to add transitions of irrelevant labels here,
              since they are handled together in a separate step.
            */
            continue;
        }

        vector<Transition>& transitions = transitions_by_var[var_no];

        /*
          TODO: Our method for generating transitions is only guarantueed
          to generate sorted and unique transitions if the task has no
          conditional effects.
        */
        if (task_has_conditional_effects) {
            utils::sort_unique(transitions);
        } else {
            assert(utils::is_sorted_unique(transitions));
        }

        auto& data = transition_system_data_by_var[var_no];
        vector<int> label_to_local_label = data.label_to_local_label;
        vector<LocalLabelInfo>& local_label_infos = data.local_label_infos;

        for (size_t local_label = 0; local_label < local_label_infos.size();
             ++local_label) {
            LocalLabelInfo& local_label_info = local_label_infos[local_label];
            const vector<Transition>& local_label_transitions =
                local_label_info.get_transitions();
            if (transitions == local_label_transitions) {
                assert(label_to_local_label[label] == -1);
                label_to_local_label[label] = local_label;
                local_label_info.add_label(label, label_cost);
                goto continue_outer;
            }
        }

        {
            int new_local_label = local_label_infos.size();
            LabelGroup label_group = {label};
            local_label_infos.emplace_back(
                std::move(label_group),
                std::move(transitions),
                label_cost);
            assert(label_to_local_label[label] == -1);
            label_to_local_label[label] = new_local_label;
        }

    continue_outer:;
    }
}

void FTSFactory::build_transitions_for_irrelevant_ops(
    VariableProxy variable,
    const Labels& labels)
{
    int var_id = variable.get_id();
    int num_states = variable.get_domain_size();

    // Collect all irrelevant labels for this variable.
    LabelGroup irrelevant_labels;
    value_t cost = INFINITE_VALUE;

    for (int label : labels) {
        if (!is_relevant(var_id, label)) {
            irrelevant_labels.push_back(label);
            cost = min(cost, labels.get_label_cost(label));
        }
    }

    TransitionSystemData& ts_data = transition_system_data_by_var[var_id];
    if (!irrelevant_labels.empty()) {
        vector<Transition> transitions;
        transitions.reserve(num_states);
        for (int state = 0; state < num_states; ++state) {
            // FIXME wrong arity
            transitions.emplace_back(state, std::vector<int>(1, state));
        }
        int new_local_label = ts_data.local_label_infos.size();
        for (int label : irrelevant_labels) {
            assert(ts_data.label_to_local_label[label] == -1);
            ts_data.label_to_local_label[label] = new_local_label;
        }
        ts_data.local_label_infos.emplace_back(
            std::move(irrelevant_labels),
            std::move(transitions),
            cost);
    }
}

void FTSFactory::build_transitions(const Labels& labels)
{
    /*
      - Compute all transitions of all operators for all variables, grouping
        transitions of locally equivalent labels for a given variable.
      - Computes relevant operator information as a side effect.
    */
    for (ProbabilisticOperatorProxy op : task_proxy.get_operators())
        build_transitions_for_operator(op);

    /*
      Compute transitions of irrelevant operators for each variable only
      once and put the labels into a single label group.
    */
    for (VariableProxy variable : task_proxy.get_variables())
        build_transitions_for_irrelevant_ops(variable, labels);
}

vector<unique_ptr<TransitionSystem>>
FTSFactory::create_transition_systems(const Labels& labels)
{
    // Create the actual TransitionSystem objects.
    int num_variables = task_proxy.get_variables().size();

    // We reserve space for the transition systems added later by merging.
    vector<unique_ptr<TransitionSystem>> result;
    assert(num_variables >= 1);
    result.reserve(num_variables * 2 - 1);

    for (int var_id = 0; var_id < num_variables; ++var_id) {
        TransitionSystemData& ts_data = transition_system_data_by_var[var_id];
        result.push_back(std::make_unique<TransitionSystem>(
            ts_data.num_variables,
            std::move(ts_data.incorporated_variables),
            labels,
            std::move(ts_data.label_to_local_label),
            std::move(ts_data.local_label_infos),
            ts_data.num_states,
            std::move(ts_data.goal_states),
            ts_data.init_state));
    }
    return result;
}

vector<unique_ptr<MergeAndShrinkRepresentation>>
FTSFactory::create_mas_representations() const
{
    // Create the actual MergeAndShrinkRepresentation objects.
    int num_variables = task_proxy.get_variables().size();

    // We reserve space for the transition systems added later by merging.
    vector<unique_ptr<MergeAndShrinkRepresentation>> result;
    assert(num_variables >= 1);
    result.reserve(num_variables * 2 - 1);

    for (int var_id = 0; var_id < num_variables; ++var_id) {
        int range = task_proxy.get_variables()[var_id].get_domain_size();
        result.push_back(
            std::make_unique<MergeAndShrinkRepresentationLeaf>(var_id, range));
    }
    return result;
}

vector<unique_ptr<Distances>> FTSFactory::create_distances(
    const vector<unique_ptr<TransitionSystem>>& transition_systems) const
{
    // Create the actual Distances objects.
    int num_variables = task_proxy.get_variables().size();

    // We reserve space for the transition systems added later by merging.
    vector<unique_ptr<Distances>> result;
    assert(num_variables >= 1);
    result.reserve(num_variables * 2 - 1);

    for (int var_no = 0; var_no < num_variables; ++var_no) {
        result.push_back(
            std::make_unique<Distances>(*transition_systems[var_no]));
    }
    return result;
}

FactoredTransitionSystem FTSFactory::create(
    const bool compute_init_distances,
    const bool compute_goal_distances,
    utils::LogProxy& log)
{
    if (log.is_at_least_normal()) {
        log << "Building atomic transition systems... " << endl;
    }

    unique_ptr<Labels> labels = create_labels();

    initialize_transition_system_data(*labels);
    build_transitions(*labels);
    vector<unique_ptr<TransitionSystem>> transition_systems =
        create_transition_systems(*labels);
    vector<unique_ptr<MergeAndShrinkRepresentation>> mas_representations =
        create_mas_representations();
    vector<unique_ptr<Distances>> distances =
        create_distances(transition_systems);

    return FactoredTransitionSystem(
        std::move(labels),
        std::move(transition_systems),
        std::move(mas_representations),
        std::move(distances),
        compute_init_distances,
        compute_goal_distances,
        log);
}

FactoredTransitionSystem create_factored_transition_system(
    const ProbabilisticTaskProxy& task_proxy,
    const bool compute_init_distances,
    const bool compute_goal_distances,
    utils::LogProxy& log)
{
    return FTSFactory(task_proxy)
        .create(compute_init_distances, compute_goal_distances, log);
}

} // namespace probfd::merge_and_shrink