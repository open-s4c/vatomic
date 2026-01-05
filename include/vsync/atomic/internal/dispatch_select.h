/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */

#ifndef VATOMIC_INTERNAL_DISPATCH_SELECT_H
#define VATOMIC_INTERNAL_DISPATCH_SELECT_H

#include <vsync/common/macros.h>
#include <vsync/vtypes.h>

#define VSYNC_DISPATCH_BACKEND_DISABLED 0
#define VSYNC_DISPATCH_BACKEND_GNU      1
#define VSYNC_DISPATCH_BACKEND_C11      2

#if !defined(VSYNC_DISPATCH_BACKEND)
    #if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L)
        #define VSYNC_DISPATCH_BACKEND VSYNC_DISPATCH_BACKEND_C11
    #elif defined(__STRICT_ANSI__)
        #define VSYNC_DISPATCH_BACKEND VSYNC_DISPATCH_BACKEND_DISABLED
    #elif defined(__GNUC__)
        #define VSYNC_DISPATCH_BACKEND VSYNC_DISPATCH_BACKEND_GNU
    #else
        #define VSYNC_DISPATCH_BACKEND VSYNC_DISPATCH_BACKEND_DISABLED
    #endif
#endif

#if defined(__cplusplus)
    #define VSYNC_DISPATCH_STATIC_ASSERT(cond, msg) static_assert(cond, #msg)
#elif defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L)
    #define VSYNC_DISPATCH_STATIC_ASSERT(cond, msg) _Static_assert(cond, #msg)
#elif defined(__GNUC__)
    #define VSYNC_DISPATCH_STATIC_ASSERT(cond, msg)                            \
        __extension__ _Static_assert(cond, #msg)
#else
    #define VSYNC_DISPATCH_STATIC_ASSERT__(cond, line)                         \
        typedef char vsync_dispatch_static_assert_##line[(cond) ? 1 : -1]
    #define VSYNC_DISPATCH_STATIC_ASSERT_(cond, line)                          \
        VSYNC_DISPATCH_STATIC_ASSERT__(cond, line)
    #define VSYNC_DISPATCH_STATIC_ASSERT(cond, msg)                            \
        VSYNC_DISPATCH_STATIC_ASSERT_(cond, __LINE__)
#endif

VSYNC_DISPATCH_STATIC_ASSERT(sizeof(void *) == sizeof(uintptr_t),
                             pointer_size_mismatch);

#if UINTPTR_MAX == UINT64_MAX
    #define VSYNC_DISPATCH_PTR_PREFIX vatomic64
    #define VSYNC_DISPATCH_PTR_VALUE  vuint64_t
#elif UINTPTR_MAX == UINT32_MAX
    #define VSYNC_DISPATCH_PTR_PREFIX vatomic32
    #define VSYNC_DISPATCH_PTR_VALUE  vuint32_t
#else
VSYNC_DISPATCH_STATIC_ASSERT(0, unsupported_pointer_size_for_dispatch);
#endif

#if SIZE_MAX == UINT64_MAX
    #define VSYNC_DISPATCH_SZ_PREFIX vatomic64
    #define VSYNC_DISPATCH_SZ_VALUE  vuint64_t
#elif SIZE_MAX == UINT32_MAX
    #define VSYNC_DISPATCH_SZ_PREFIX vatomic32
    #define VSYNC_DISPATCH_SZ_VALUE  vuint32_t
#else
VSYNC_DISPATCH_STATIC_ASSERT(0, unsupported_size_t_for_dispatch);
#endif

#endif /* VATOMIC_INTERNAL_DISPATCH_SELECT_H */
