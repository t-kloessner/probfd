#pragma once

#include "value_type.h"
#include "../global_operator.h"

#include <iterator>
#include <string>
#include <vector>

class GlobalOperator;
class GlobalCondition;
class GlobalState;

namespace probabilistic {

struct ProbabilisticOutcome {
    const GlobalOperator* op;
    value_type::value_t prob;
    explicit ProbabilisticOutcome(
        const GlobalOperator* op,
        value_type::value_t prob);
};

class ProbabilisticOperator {
public:
    using const_iterator = std::vector<ProbabilisticOutcome>::const_iterator;

    ProbabilisticOperator(
        unsigned id,
        std::string name,
        std::vector<ProbabilisticOutcome> outcomes);

    unsigned get_id() const;
    const std::string& get_name() const;
    bool is_stochastic() const;
    std::size_t num_outcomes() const;
    int get_cost() const;

    const ProbabilisticOutcome& operator[](unsigned outcome) const;
    const ProbabilisticOutcome& get(unsigned outcome) const;
    const std::vector<GlobalCondition>& get_preconditions() const;

    const_iterator begin() const;
    const_iterator end() const;

private:
    unsigned id_;
    std::vector<ProbabilisticOutcome> outcomes_;
    std::string name_;
};

extern bool is_applicable(const ProbabilisticOperator* op, const GlobalState& state);

} // namespace probabilistic
