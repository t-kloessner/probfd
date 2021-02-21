#pragma once

#include "../../value_type.h"
#include "abstract_state.h"

#include <unordered_map>
#include "../../types.h"

namespace probabilistic {
namespace pdbs {

class ProbabilisticProjection;

class QuantitativeResultStore {
public:
    explicit QuantitativeResultStore();
    ~QuantitativeResultStore() = default;

    bool has_value(const AbstractState& x) const;
    void set(const AbstractState& state, value_type::value_t value);
    value_type::value_t get(const AbstractState& x) const;
    value_type::value_t& operator[](const AbstractState& x);
    value_type::value_t& operator[](const StateID& x);

private:
    std::unordered_map<int, value_type::value_t> values_;
};

} // namespace pdbs
} // namespace probabilistic
