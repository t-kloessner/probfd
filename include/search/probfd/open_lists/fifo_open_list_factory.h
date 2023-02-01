#ifndef PROBFD_OPEN_LISTS_FIFO_OPEN_LIST_FACTORY_H
#define PROBFD_OPEN_LISTS_FIFO_OPEN_LIST_FACTORY_H

#include "probfd/open_lists/task_open_list_factory.h"

namespace probfd {
namespace open_lists {

class FifoOpenListFactory : public TaskOpenListFactory {
public:
    ~FifoOpenListFactory() override = default;

    std::shared_ptr<engine_interfaces::OpenList<OperatorID>> create_open_list(
        engine_interfaces::StateIDMap<State>* state_id_map,
        engine_interfaces::ActionIDMap<OperatorID>* op_id_map) override;
};

} // namespace open_lists
} // namespace probfd

#endif // __FIFO_OPEN_LIST_H__