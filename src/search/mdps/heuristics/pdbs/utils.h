#pragma once

#include "types.h"

#include <ostream>

namespace probabilistic::pdbs {
class MaxProbProjection;

void dump_pattern_vars(std::ostream& out, const Pattern& p);
void dump_pattern_short(std::ostream& out, PatternID i, const Pattern& p);
void dump_pattern(std::ostream& out, PatternID i, const Pattern& p);

void dump_projection(
    MaxProbProjection& projection,
    const std::string& path,
    bool print_transition_labels = true,
    bool print_values = true);
}