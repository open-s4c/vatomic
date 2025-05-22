/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#ifndef VSYNC_ATOMIC_HPP
#define VSYNC_ATOMIC_HPP

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

#include "cpp/atomic/core_u8.hpp"
#include "cpp/atomic/core_u16.hpp"
#include "cpp/atomic/core_u32.hpp"
#if defined(__APPLE__)
    #include "cpp/atomic/core_sz.hpp"
#endif
#include "cpp/atomic/core_u64.hpp"
#include "cpp/atomic/core_ptr.hpp"
#include "cpp/atomic/score_s8.hpp"
#include "cpp/atomic/score_s16.hpp"
#include "cpp/atomic/score_s32.hpp"
#include "cpp/atomic/score_s64.hpp"
#endif
