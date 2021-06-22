#pragma once

#include "additivity_strategy.h"

namespace probabilistic {
namespace pdbs {
namespace additivity {

class AdditivityMaxOrthogonality : public AdditivityStrategy {
public:
    AdditivityMaxOrthogonality() = default;
    ~AdditivityMaxOrthogonality() override = default;

    std::shared_ptr<std::vector<PatternClique>>
    compute_additive_subcollections(const PatternCollection&) override;
};

}
}
}