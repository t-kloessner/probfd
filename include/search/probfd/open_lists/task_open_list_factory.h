#ifndef PROBFD_OPEN_LISTS_TASK_OPEN_LIST_FACTORY_H
#define PROBFD_OPEN_LISTS_TASK_OPEN_LIST_FACTORY_H

#include "probfd/engine_interfaces/fdr_types.h"

#include "probfd/fdr_types.h"

#include <memory>

namespace probfd {

/// Factory interface for open lists.
class FDROpenListFactory {
public:
    virtual ~FDROpenListFactory() = default;

    /// Creates a open list from a given state and action id map.
    virtual std::shared_ptr<FDROpenList>
    create_open_list(FDRMDP* state_space) = 0;
};

} // namespace probfd

#endif