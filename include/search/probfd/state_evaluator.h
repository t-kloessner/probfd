#ifndef MDPS_STATE_EVALUATOR_H
#define MDPS_STATE_EVALUATOR_H

#include "probfd/engine_interfaces/state_evaluator.h"

#include "global_state.h"

namespace probfd {

/// Type alias for state evaluators of GlobalState.
using GlobalStateEvaluator = engine_interfaces::StateEvaluator<GlobalState>;

} // namespace probfd

#endif // __STATE_EVALUATOR_H__