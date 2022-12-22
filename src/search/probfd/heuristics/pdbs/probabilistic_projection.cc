#include "probfd/heuristics/pdbs/probabilistic_projection.h"

#include "probfd/analysis_objectives/goal_probability_objective.h"

#include "probfd/globals.h"

#include "global_operator.h"
#include "successor_generator.h"

#include <algorithm>
#include <deque>
#include <numeric>
#include <set>

namespace probfd {
namespace heuristics {
namespace pdbs {

namespace {
// Footprint used for detecting duplicate operators.
struct ProgressionOperatorFootprint {
    long long int precondition_hash;
    std::vector<WeightedElement<AbstractState>> successors;

    ProgressionOperatorFootprint(
        long long int precondition_hash,
        const AbstractOperator& op)
        : precondition_hash(precondition_hash)
        , successors(op.outcomes.begin(), op.outcomes.end())
    {
        std::sort(successors.begin(), successors.end());
    }

    friend bool operator<(
        const ProgressionOperatorFootprint& a,
        const ProgressionOperatorFootprint& b)
    {
        return std::tie(a.precondition_hash, a.successors) <
               std::tie(b.precondition_hash, b.successors);
    }

    friend bool operator==(
        const ProgressionOperatorFootprint& a,
        const ProgressionOperatorFootprint& b)
    {
        return std::tie(a.precondition_hash, a.successors) ==
               std::tie(b.precondition_hash, b.successors);
    }
};

struct OutcomeInfo {
    AbstractState base_effect = AbstractState(0);
    std::vector<int> missing_pres;

    friend bool operator==(const OutcomeInfo& a, const OutcomeInfo& b)
    {
        return std::tie(a.base_effect, a.missing_pres) ==
               std::tie(b.base_effect, b.missing_pres);
    }
};

// Views a global partial assignment as its projection with respect
// to PDB variables, with variable indices mapped to the PDB index space
template <typename FactRange>
auto pdb_view(FactRange&& partial_state, const std::vector<int>& pdb_indices)
{
    const auto to_pdb_index = [&](const auto& p) {
        return std::make_pair(pdb_indices[p.var], p.val);
    };

    const auto has_non_pdb_var = [&](const std::pair<int, int>& p) {
        return p.first != -1;
    };

    return utils::filter(
        utils::transform(partial_state, to_pdb_index),
        has_non_pdb_var);
}

} // namespace

using PartialAssignment = std::vector<std::pair<int, int>>;

ProbabilisticProjection::ProbabilisticProjection(
    const Pattern& pattern,
    const std::vector<int>& domains,
    bool operator_pruning)
    : ProbabilisticProjection(
          new AbstractStateMapper(pattern, domains),
          operator_pruning)
{
}

ProbabilisticProjection::ProbabilisticProjection(
    AbstractStateMapper* mapper,
    bool operator_pruning)
    : state_mapper_(mapper)
    , initial_state_((*state_mapper_)(::g_initial_state_data))
    , value_table(state_mapper_->num_states())
{
    setup_abstract_goal();
    build_operators(operator_pruning);
}

std::shared_ptr<AbstractStateMapper>
ProbabilisticProjection::get_abstract_state_mapper() const
{
    return state_mapper_;
}

std::unordered_set<AbstractState>&
ProbabilisticProjection::get_abstract_goal_states()
{
    return goal_states_;
}

unsigned int ProbabilisticProjection::num_states() const
{
    return state_mapper_->num_states();
}

bool ProbabilisticProjection::is_dead_end(const GlobalState& s) const
{
    return is_dead_end(get_abstract_state(s));
}

bool ProbabilisticProjection::is_dead_end(const AbstractState& s) const
{
    return utils::contains(dead_ends_, StateID(s.id));
}

bool ProbabilisticProjection::is_goal(const AbstractState& s) const
{
    return utils::contains(goal_states_, s);
}

value_type::value_t ProbabilisticProjection::lookup(const GlobalState& s) const
{
    return lookup(get_abstract_state(s));
}

value_type::value_t
ProbabilisticProjection::lookup(const AbstractState& s) const
{
    return value_table[s.id];
}

AbstractState
ProbabilisticProjection::get_abstract_state(const GlobalState& s) const
{
    return state_mapper_->operator()(s);
}

AbstractState
ProbabilisticProjection::get_abstract_state(const std::vector<int>& s) const
{
    return state_mapper_->operator()(s);
}

const Pattern& ProbabilisticProjection::get_pattern() const
{
    return state_mapper_->get_pattern();
}

void ProbabilisticProjection::setup_abstract_goal()
{
    std::vector<int> non_goal_vars;
    AbstractState base(0);

    // Translate sparse goal into pdb index space
    // and collect non-goal variables aswell.
    const Pattern& variables = state_mapper_->get_pattern();
    for (int v = 0, w = 0; v != static_cast<int>(variables.size());) {
        const int p_var = variables[v];
        const int g_var = g_goal[w].first;

        if (p_var < g_var) {
            non_goal_vars.push_back(v++);
        } else {
            if (p_var == g_var) {
                const int g_val = g_goal[w].second;
                base.id += state_mapper_->get_multiplier(v++) * g_val;
            }

            if (++w == static_cast<int>(g_goal.size())) {
                while (v < static_cast<int>(variables.size())) {
                    non_goal_vars.push_back(v++);
                }
                break;
            }
        }
    }

    assert(non_goal_vars.size() != variables.size()); // No goal no fun.

    auto goals = state_mapper_->abstract_states(base, std::move(non_goal_vars));

    for (const auto& g : goals) {
        goal_states_.insert(g);
    }
}

void ProbabilisticProjection::build_operators(bool operator_pruning)
{
    abstract_operators_.reserve(g_operators.size());

    std::vector<PartialAssignment> progression_preconditions;
    progression_preconditions.reserve(g_operators.size());

    std::set<ProgressionOperatorFootprint> duplicate_set;

    std::vector<int> pdb_indices(::g_variable_domain.size(), -1);

    for (size_t i = 0; i < state_mapper_->get_pattern().size(); ++i) {
        pdb_indices[state_mapper_->get_pattern()[i]] = i;
    }

    std::vector<const AbstractOperator*> opptrs;
    opptrs.reserve(abstract_operators_.size());

    // Generate the abstract operators for each probabilistic operator
    for (const ProbabilisticOperator& op : g_operators) {
        const int operator_id = op.get_id();
        const int reward = op.get_reward();

        // Precondition partial state and partial state to enumerate
        // effect values not appearing in precondition
        auto view =
            utils::common(pdb_view(op.get_preconditions(), pdb_indices));
        PartialAssignment local_precondition(view.begin(), view.end());
        PartialAssignment vars_eff_not_pre;

        // Info about each probabilistic outcome
        Distribution<OutcomeInfo> outcomes;

        // Collect info about the outcomes
        for (const ProbabilisticOutcome& out : op) {
            OutcomeInfo info;

            for (const auto& [var, val] :
                 pdb_view(out.effects(), pdb_indices)) {
                auto beg = utils::make_key_iterator(local_precondition.begin());
                auto end = utils::make_key_iterator(local_precondition.end());
                auto pre_it = utils::find_sorted(beg, end, var);

                int val_change = val;

                if (pre_it == local_precondition.end()) {
                    vars_eff_not_pre.emplace_back(var, 0);
                    info.missing_pres.push_back(var);
                } else {
                    val_change -= pre_it.base->second;
                }

                info.base_effect += state_mapper_->from_fact(var, val_change);
            }

            outcomes.add_unique(std::move(info), out.prob);
        }

        utils::sort_unique(vars_eff_not_pre);

        // We enumerate all values for variables that are not part of
        // the precondition but in an effect. Depending on the value of the
        // variable, the value change caused by the abstract operator would be
        // different, hence we generate on operator for each state where
        // enabled.
        auto ran =
            state_mapper_->partial_assignments(std::move(vars_eff_not_pre));

        for (const PartialAssignment& values : ran) {
            // Generate the progression operator
            AbstractOperator new_op(operator_id, reward);

            for (const auto& [info, prob] : outcomes) {
                const auto& [base_effect, missing_pres] = info;
                auto a =
                    state_mapper_->from_values_partial(missing_pres, values);

                new_op.outcomes.add_unique(base_effect - a, prob);
            }

            // Construct the precondition by merging the original precondition
            // partial state with the partial state for the non-precondition
            // effects of this iteration
            PartialAssignment precondition;
            precondition.reserve(local_precondition.size() + values.size());

            std::merge(
                local_precondition.begin(),
                local_precondition.end(),
                values.begin(),
                values.end(),
                std::back_inserter(precondition));

            if (operator_pruning) {
                // Generate a hash for the precondition to check for duplicates
                const long long int pre_hash =
                    state_mapper_->get_unique_partial_state_id(precondition);
                if (!duplicate_set.emplace(pre_hash, new_op).second) {
                    continue;
                }
            }

            // Now add the progression operators.
            progression_preconditions.push_back(std::move(precondition));
            auto& aop = abstract_operators_.emplace_back(std::move(new_op));
            opptrs.push_back(&aop);
        }
    }

    assert(abstract_operators_.size() == progression_preconditions.size());
    assert(opptrs.size() == progression_preconditions.size());

    match_tree_.reset(
        new MatchTree(state_mapper_->get_pattern(), state_mapper_));

    // build the match tree
    for (size_t op_id = 0; op_id < abstract_operators_.size(); ++op_id) {
        match_tree_->insert(
            &abstract_operators_[op_id],
            progression_preconditions[op_id]);
    }
}

} // namespace pdbs
} // namespace heuristics
} // namespace probfd
