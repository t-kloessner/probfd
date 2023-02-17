#ifndef MDPS_QUOTIENT_SYSTEM_H
#define MDPS_QUOTIENT_SYSTEM_H

#include "algorithms/segmented_vector.h"

#include "probfd/quotients/engine_interfaces.h"
#include "probfd/quotients/quotient_system.h"

#include "probfd/action_id_map.h"
#include "probfd/transition_generator.h"

#include <algorithm>
#include <cassert>
#include <memory>
#include <ranges>
#include <set>
#include <unordered_set>
#include <vector>

namespace probfd {
namespace quotients {

template <>
class QuotientSystem<OperatorID> {
    friend struct const_iterator;

public:
    using QAction = QuotientAction<OperatorID>;
    using QuotientStateIDIterator =
        DefaultQuotientSystem<OperatorID>::QuotientStateIDIterator;

    struct const_iterator {
        using iterator_type = std::forward_iterator_tag;
        using value_type = StateID::size_type;
        using difference_type = std::ptrdiff_t;
        using pointer = const StateID::size_type*;
        using reference = const StateID::size_type&;

        explicit const_iterator(
            const QuotientSystem* qs,
            DefaultQuotientSystem<OperatorID>::const_iterator x)
            : qs_(qs)
            , i(x)
        {
        }

        const_iterator& operator++()
        {
            if (qs_->cache_) {
                while (++i.i < qs_->state_infos_.size()) {
                    const StateID::size_type ref =
                        qs_->state_infos_[i.i].states[0];
                    if (ref == i.i) {
                        break;
                    }
                }
            } else {
                ++i;
            }
            return *this;
        }

        const_iterator operator+=(int x)
        {
            const_iterator res = *this;
            while (x-- > 0)
                this->operator++();
            return res;
        }

        bool operator==(const const_iterator& other) const
        {
            return i == other.i;
        }

        bool operator!=(const const_iterator& other) const
        {
            return i != other.i;
        }

        reference operator*() const { return i.i; }

    private:
        const QuotientSystem* qs_;
        DefaultQuotientSystem<OperatorID>::const_iterator i;
    };

    explicit QuotientSystem(
        engine_interfaces::ActionIDMap<OperatorID>* aid,
        engine_interfaces::TransitionGenerator<OperatorID>* transition_gen)
        : cache_(transition_gen->caching_)
        , gen_(transition_gen)
        , fallback_(nullptr)
    {
        if (!cache_) {
            fallback_.reset(
                new DefaultQuotientSystem<OperatorID>(aid, transition_gen));
        } else {
            state_infos_.push_back(QuotientInformation(0));
        }
    }

    unsigned quotient_size(StateID state_id) const;

    const_iterator begin() const;
    const_iterator end() const;

    std::ranges::subrange<QuotientStateIDIterator, QuotientStateIDIterator>
    quotient_range(StateID state_id) const;

    StateID translate_state_id(StateID sid) const;

    void generate_applicable_ops(StateID sid, std::vector<QAction>& result);

    void generate_successors(
        StateID,
        const QAction& a,
        Distribution<StateID>& result);

    void generate_all_successors(
        StateID sid,
        std::vector<QAction>& aops,
        std::vector<Distribution<StateID>>& successors);

    QAction get_action(StateID sid, ActionID aid) const;
    ActionID get_action_id(StateID sid, const QAction& a) const;

    OperatorID get_original_action(StateID, const QAction& a) const;
    ActionID get_original_action_id(StateID sid, ActionID a) const;

    template <std::ranges::input_range StateIDRange>
    void build_quotient(StateIDRange&& range)
        requires(
            std::is_same_v<std::ranges::range_value_t<StateIDRange>, StateID>)
    {
        this->build_quotient(
            std::ranges::begin(range),
            std::ranges::end(range));
    }

    template <std::input_iterator StateIDIterator>
    void build_quotient(StateIDIterator begin, StateIDIterator end)
        requires(std::is_same_v<std::iter_value_t<StateIDIterator>, StateID>)
    {
        if (begin != end) {
            this->build_quotient(begin, end, *begin);
        }
    }

    template <std::input_iterator StateIDIterator>
    void build_quotient(StateIDIterator begin, StateIDIterator end, StateID rid)
        requires(std::is_same_v<std::iter_value_t<StateIDIterator>, StateID>)
    {
        this->build_quotient(
            begin,
            end,
            rid,
            utils::infinite_iterator<std::vector<OperatorID>>());
    }

    template <
        std::input_iterator StateIDIterator,
        std::input_iterator ActionFilterIterator>
    void build_quotient(
        StateIDIterator begin,
        StateIDIterator end,
        StateID rid,
        ActionFilterIterator filter_it)
        requires(
            std::is_same_v<std::iter_value_t<StateIDIterator>, StateID> &&
            std::is_same_v<
                std::iter_value_t<ActionFilterIterator>,
                std::vector<OperatorID>>)
    {
        assert(utils::contains(std::ranges::subrange(begin, end), rid));

        if (!cache_) {
            fallback_->build_quotient(begin, end, rid, filter_it);
            return;
        }

        QuotientInformation& dest_info = state_infos_[rid];
        std::vector<StateID>& parents = dest_info.parents;
        std::vector<StateID>& states = dest_info.states;
        const unsigned old_qstates = states.size();

        std::unordered_set<StateID> states_set;

        for (auto it = begin; it != end; ++it) {
            const StateID state_id = *it;

            if (state_id == rid) {
                continue;
            }

            QuotientInformation& info = state_infos_[state_id];
            assert(info.states[0] == state_id);

            std::ranges::move(info.parents, std::back_inserter(parents));

            // Release Memory
            decltype(info.parents)().swap(info.parents);

            states.insert(states.end(), info.states.begin(), info.states.end());

            assert(utils::contains(states, state_id));
        }

        states_set.insert(states.begin(), states.end());

        for (auto it = begin; it != end; ++it, ++filter_it) {
            const StateID state_id = *it;
            QuotientInformation& info = state_infos_[state_id];
            const int e = (state_id != rid ? info.states.size() : old_qstates);

            for (int i = 0; i < e; ++i) {
                auto state = info.states[i];
                update_cache(*filter_it, gen_->lookup(state), rid, states_set);
                state_infos_[state].states[0] = rid;
            }

            if (state_id != rid) {
                info.states.resize(1);
                info.states[0] = rid;
                info.states.shrink_to_fit();
            }
        }

        const auto [first, last] =
            std::ranges::remove_if(parents, [rid, this](StateID parent) {
                return state_infos_[parent].states[0] != rid;
            });

        parents.erase(first, last);
        utils::sort_unique(parents);
        parents.shrink_to_fit();

        const ProbabilisticOperatorsProxy operators =
            gen_->task_proxy.get_operators();

        for (StateID parent : parents) {
            assert(parent != rid);
            assert(state_infos_[parent].states[0] == parent);

            const auto& parent_states = state_infos_[parent].states;

            for (StateID parent_state : parent_states) {
                auto& entry = gen_->lookup(parent_state);
                const OperatorID* aop = entry.aops;
                const OperatorID* aop_end = entry.aops + entry.naops;
                StateID* succ = entry.succs;

                for (; aop != aop_end; ++aop) {
                    auto succ_e = succ + operators[*aop].get_outcomes().size();
                    for (; succ != succ_e; ++succ) {
                        if (states_set.contains(*succ)) {
                            *succ = rid;
                        }
                        // *succ = state_infos_[*succ].states[0];
                        assert(state_infos_[*succ].states[0] == *succ);
                    }
                }
            }
        }

        assert(!state_infos_[rid].states.empty());
        assert(state_infos_[rid].states[0] == rid);
        assert(!utils::contains(state_infos_[rid].parents, rid));
        assert(utils::is_unique(state_infos_[rid].states));
        assert(utils::is_unique(state_infos_[rid].parents));

#ifndef NDEBUG
        verify_cache_consistency();
#endif
    }

private:
    struct QuotientInformation {
        std::vector<StateID> parents;
        std::vector<StateID> states;
        explicit QuotientInformation(StateID s)
            : states({s})
        {
        }
    };

    void update_cache(
        const std::vector<OperatorID>& exclude,
        engine_interfaces::TransitionGenerator<OperatorID>::CacheEntry& entry,
        const StateID rid,
        const std::unordered_set<StateID>& quotient_states)
    {
        unsigned new_size = 0;
        OperatorID* aops_src = entry.aops;
        OperatorID* aops_dest = entry.aops;
        StateID* succ_src = entry.succs;
        StateID* succ_dest = entry.succs;

        auto aops_src_end = aops_src + entry.naops;
        for (; aops_src != aops_src_end; ++aops_src) {
            OperatorID op_id = *aops_src;
            if (utils::contains(exclude, op_id)) {
                continue;
            }

            bool self_loop = true;
            StateID* k = succ_dest;

            const ProbabilisticOperatorProxy op =
                gen_->task_proxy.get_operators()[op_id];

            auto succ_src_end = succ_src + op.get_outcomes().size();
            for (; succ_src != succ_src_end; ++succ_src, ++succ_dest) {
                const bool member = quotient_states.contains(*succ_src);
                *succ_dest = member ? rid : *succ_src;
                self_loop = self_loop && (*succ_dest == rid);
                succ_dest = k;
                *aops_dest = *aops_src;
                ++aops_dest;
                ++new_size;
            }
        }

        entry.naops = new_size;
    }

#ifndef NDEBUG
    void verify_cache_consistency();
#endif

    const QuotientInformation* get_infos(StateID sid) const;
    engine_interfaces::TransitionGenerator<OperatorID>::CacheEntry&
    lookup(StateID sid);
    const engine_interfaces::TransitionGenerator<OperatorID>::CacheEntry&
    lookup(StateID sid) const;

    const bool cache_;

    segmented_vector::SegmentedVector<QuotientInformation> state_infos_;
    engine_interfaces::TransitionGenerator<OperatorID>* gen_;

    std::unique_ptr<DefaultQuotientSystem<OperatorID>> fallback_;
};

} // namespace quotients
} // namespace probfd

#endif // __QUOTIENT_SYSTEM_H__