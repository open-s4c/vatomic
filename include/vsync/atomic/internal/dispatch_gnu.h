/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2022-2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */

#ifndef VATOMIC_INTERNAL_DISPATCH_GNU_H
#define VATOMIC_INTERNAL_DISPATCH_GNU_H

#include <vsync/common/macros.h>
#include <vsync/atomic/internal/dispatch_select.h>
#include <vsync/atomic/internal/types.h>
#include "macros.h"

/*******************************************************************************
 * @file dispatch_gnu.h
 * @brief GNU statement-expression dispatcher
 *
 * This backend relies on GNU extensions (statement expressions, typeof). It
 * mirrors the previous dispatcher layout and is selected when building with
 * GNU99 extensions enabled.
 ******************************************************************************/

#define V_DISPATCH_ASSERT_ALL_SIZES(a)                                         \
    VSYNC_DISPATCH_STATIC_ASSERT(sizeof((a)->_v) == sizeof(vatomic8_t) ||      \
                                     sizeof((a)->_v) == sizeof(vatomic16_t) || \
                                     sizeof((a)->_v) == sizeof(vatomic32_t) || \
                                     sizeof((a)->_v) == sizeof(vatomic64_t) || \
                                     sizeof((a)->_v) ==                        \
                                         sizeof(vatomicptr_t) ||               \
                                     sizeof((a)->_v) == sizeof(vatomicsz_t),   \
                                 unsupported_atomic_size_for_dispatch)

#define V_DISPATCH_ASSERT_32_64(a)                                             \
    VSYNC_DISPATCH_STATIC_ASSERT(sizeof((a)->_v) == sizeof(vatomic32_t) ||     \
                                     sizeof((a)->_v) == sizeof(vatomic64_t),   \
                                 unsupported_atomic_size_for_32bit_dispatch)

/*******************************************************************************
 * @def V_DISPATCH(S, F, mo, a, ...)
 * @brief dispatches calls to corresponding vatomic function.
 *
 * This macro calls either vatomic32_F_mo(a, ...) or vatomic64_F_mo(a, ...)
 * depending on whether a is vatomic32_t or vatomic64_t. If a is vatomicptr_t,
 * it will be casted to vatomic32_t or vatomic64_t depending on the
 * architecture.
 *
 * @param S ALL, ALL_RET, INT, INT_RET
 * @param F write, read, xchg, ...
 * @param mo mo_rlx, mo_acq, mo_rel, mo_seq
 * @param a vatomic32_t, vatomic64_t, or vatomicptr_t
 * @param ... other arguments for F
 *
 * The S argument determines whether the function F returns values or not and
 * whether it accepts vatomicptr (ALL) or integers only (INT).
 ******************************************************************************/
#define V_DISPATCH(S, F, mo, a, ...)                                           \
    ({                                                                         \
        V_DISPATCH_ASSERT_ALL_SIZES(a);                                        \
        ((sizeof((a)->_v) == sizeof(vatomic64_t)) ?                            \
             V_CONCAT(V_DISPATCH_, S)(vatomic64, F, mo, a, ##__VA_ARGS__) :    \
         (sizeof((a)->_v) == sizeof(vatomic32_t)) ?                            \
             V_CONCAT(V_DISPATCH_, S)(vatomic32, F, mo, a, ##__VA_ARGS__) :    \
         (sizeof((a)->_v) == sizeof(vatomic16_t)) ?                            \
             V_CONCAT(V_DISPATCH_, S)(vatomic16, F, mo, a, ##__VA_ARGS__) :    \
             V_CONCAT(V_DISPATCH_, S)(vatomic8, F, mo, a, ##__VA_ARGS__));     \
    })

#define V_DISPATCH32(S, F, mo, a, ...)                                         \
    ({                                                                         \
        V_DISPATCH_ASSERT_32_64(a);                                            \
        ((sizeof((a)->_v) == sizeof(vatomic64_t)) ?                            \
             V_CONCAT(V_DISPATCH_, S)(vatomic64, F, mo, a, ##__VA_ARGS__) :    \
             V_CONCAT(V_DISPATCH_, S)(vatomic32, F, mo, a, ##__VA_ARGS__));    \
    })

/*******************************************************************************
 * @def V_DISPATCH_x(P, F, C, ...)
 * @brief Decides number of arguments and applies casts to them.
 *
 * @param A atomic type vatomic32_t or vatomic64_t
 * @param T argument type vuint32_t or vuint64_t
 * @param F function such as write, read, xchg, ...
 * @param C cast macro for arguments beyond a
 ******************************************************************************/
#ifdef DOC
    #define V_DISPATCH_x(P, F, C, ...)
#else
    #define V_PTR_ARG(A)                   A *
    #define V_DISPATCH_1(A, T, F, C, a)    F(V_CAST(V_PTR_ARG(A), a))
    #define V_DISPATCH_2(A, T, F, C, a, v) F(V_CAST(V_PTR_ARG(A), a), C(T, v))
    #define V_DISPATCH_3(A, T, F, C, a, o, n)                                  \
        F(V_CAST(V_PTR_ARG(A), a), C(T, o), C(T, n))
    #define V_DISPATCH_N(A, T, F, C, ...)                                      \
        V_NR_VARS(V_DISPATCH_, __VA_ARGS__)(A, T, F, C, __VA_ARGS__)
#endif

/*******************************************************************************
 * @def V_DISPATCH_ALL(T, F, C, ...)
 * @brief Creates dispatch functions for all atomic types.
 *
 * Dispatch casts integer arguments to unsigned integers of the same size,
 * that is vuint64_t and vuint32_t. If the type is even smaller, then the
 * cast will be to vuint32_t. Interfaces that accept integers can safely cast
 * the integers as long as the target type is larger or equal than the
 * destination type.
 ******************************************************************************/
#define V_DISPATCH_ALL(P, F, mo, a, ...)                                       \
    ({                                                                         \
        V_DISPATCH_N(V_MAP_A(P), V_MAP_T(P), V_FUNC(P, F, mo), V_CAST, a,      \
                     ##__VA_ARGS__);                                           \
    })
#define V_DISPATCH_ALL_RET(P, F, mo, a, ...)                                   \
    ({                                                                         \
        V_MAP_T(P) _r = V_DISPATCH_ALL(P, F, mo, a, ##__VA_ARGS__);            \
        V_CAST(__typeof__((a)->_v), _r);                                       \
    })

/*******************************************************************************
 * @def V_DISPATCH_INT(T, F, C, ...)
 * @brief Creates dispatch functions for int atomic types.
 *
 * Dispatch casts integer arguments to unsigned integers of the same size,
 * that is vuint64_t and vuint32_t.
 ******************************************************************************/
#define V_DISPATCH_INT(P, F, mo, a, ...)                                       \
    ({                                                                         \
        V_DISPATCH_N(V_MAP_A(P), V_MAP_T(P), V_FUNC(P, F, mo), V_CAST_INT, a,  \
                     ##__VA_ARGS__);                                           \
    })
#define V_DISPATCH_INT_RET(P, F, mo, a, ...)                                   \
    (V_MAP_T(P)) V_DISPATCH_INT(P, F, mo, a, ##__VA_ARGS__)

#define V_DISPATCH_CONST(S, F, mo, a, ...)                                     \
    V_DISPATCH(S, F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST_ALL(F, mo, a, ...)                                    \
    V_DISPATCH_ALL(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST_ALL_RET(F, mo, a, ...)                                \
    V_DISPATCH_ALL_RET(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST_INT(F, mo, a, ...)                                    \
    V_DISPATCH_INT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST_INT_RET(F, mo, a, ...)                                \
    V_DISPATCH_INT_RET(F, mo, a, ##__VA_ARGS__)

#define V_DISPATCH32_CONST(S, F, mo, a, ...)                                   \
    V_DISPATCH32(S, F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST_ALL(F, mo, a, ...)                                  \
    V_DISPATCH32_ALL(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST_ALL_RET(F, mo, a, ...)                              \
    V_DISPATCH32_ALL_RET(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST_INT(F, mo, a, ...)                                  \
    V_DISPATCH32_INT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST_INT_RET(F, mo, a, ...)                              \
    V_DISPATCH32_INT_RET(F, mo, a, ##__VA_ARGS__)

#endif /* VATOMIC_INTERNAL_DISPATCH_GNU_H */
