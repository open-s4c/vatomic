/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2023-2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */

#ifndef VSYNC_COMMON_MACROS_H
#define VSYNC_COMMON_MACROS_H

/*******************************************************************************
 * static assert
 ******************************************************************************/

#define V_ASSERT_(COND, MSG) char _v_##MSG[(COND) ? 1 : -1]
#define V_ASSERT(COND, MSG)  V_ASSERT_(COND, MSG)

/*******************************************************************************
 * paster and expanders
 ******************************************************************************/

#define V_PASTE(a, b)  a##b
#define V_CONCAT(a, b) V_PASTE(a, b)
#define V_JOIN(a, b)   V_CONCAT(V_CONCAT(a, _), b)
#define V_STRING(a)    #a

/*******************************************************************************
 * attributes
 ******************************************************************************/

#ifdef VSYNC_DISABLE_DEPRECATED_WARNING
    #define V_DEPRECATED
#else
    #define V_DEPRECATED __attribute__((deprecated))
#endif

/*******************************************************************************
 * argument count macro
 ******************************************************************************/

#define V_NR_VARS_(m, a, b, c, d, e, f, g, h, i, j, k, n, ...) m##n
#define V_NR_VARS(m, ...)                                                      \
    V_NR_VARS_(m, ##__VA_ARGS__, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)

/**
 * Compiler barrier
 *
 */
#define V_COMPILER_BARRIER() __asm__ __volatile__("" ::: "memory")

#endif
