#ifndef MDPS_HEURISTICS_PDBS_QUALITATIVE_RESULT_STORE_H
#define MDPS_HEURISTICS_PDBS_QUALITATIVE_RESULT_STORE_H

#include "abstract_state.h"

#include <unordered_set>

namespace probabilistic {
namespace pdbs {

class ProbabilisticProjection;

class QualitativeResultStore {
public:
    struct assignable_bool_t {
    public:
        assignable_bool_t& operator=(const bool value);
        operator bool() const;

    private:
        friend class QualitativeResultStore;
        assignable_bool_t(
            const AbstractState& s,
            QualitativeResultStore* store);
        const AbstractState state_;
        QualitativeResultStore* ref_;
    };

    QualitativeResultStore() = default;
    QualitativeResultStore(
        bool is_negated,
        std::unordered_set<AbstractState> states);

    void negate_all();
    void clear();
    void set(const AbstractState& s, bool val);
    bool get(const AbstractState& s) const;

    assignable_bool_t operator[](const AbstractState& s);
    bool operator[](const AbstractState& s) const;

private:
    bool is_negated_ = false;
    std::unordered_set<AbstractState> states_;
};

} // namespace pdbs
} // namespace probabilistic

#endif