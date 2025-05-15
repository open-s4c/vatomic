#ifndef __VATOMIC_HPP__
#define __VATOMIC_HPP__

namespace vsync
{
typedef enum memory_order {
    memory_order_relaxed,
    memory_order_consume,
    memory_order_acquire,
    memory_order_release,
    memory_order_acq_rel,
    memory_order_seq_cst
} memory_order;

template <typename T> struct atomic;
} // namespace vsync

//#include "cpp/atomic/core_sz.hpp"
#include "cpp/atomic/core_u8.hpp"
#include "cpp/atomic/core_u16.hpp"
#include "cpp/atomic/core_u32.hpp"
#include "cpp/atomic/core_u64.hpp"

#endif
