/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */

#ifndef VATOMIC_INTERNAL_DISPATCH_C11_H
#define VATOMIC_INTERNAL_DISPATCH_C11_H

#include <vsync/common/macros.h>
#include <vsync/atomic/internal/dispatch_select.h>
#include <vsync/atomic/internal/types.h>
#include "macros.h"

/*******************************************************************************
 * @file dispatch_c11.h
 * @brief ISO C11 dispatcher based on _Generic
 *
 * This backend avoids GNU-only extensions and relies solely on C11 _Generic
 * to select the correct atomic function.
 ******************************************************************************/

#define V_DISPATCH_EXPR_ASSERT(cond) ((void)sizeof(char[(cond) ? 1 : -1]))
#define V_DISPATCH_C11_UNSUPPORTED() (V_DISPATCH_EXPR_ASSERT(0), 0)

#define V_DISPATCH_C11_APPLY_1(ptr_t, val_t, func, a) func((ptr_t)(a))
#define V_DISPATCH_C11_REINTERPRET(val_t, src_t, v)                            \
    ((union {                                                                  \
         val_t out;                                                            \
         src_t in;                                                             \
     }){.in = (src_t)(v)}                                                      \
         .out)

#define V_DISPATCH_C11_CAST_VALUE(val_t, v)                                    \
    _Generic((v),                                                              \
        void *: V_DISPATCH_C11_REINTERPRET(val_t, uintptr_t, (uintptr_t)(v)),  \
        const void *: V_DISPATCH_C11_REINTERPRET(val_t, uintptr_t,             \
                                                 (uintptr_t)(v)),              \
        default: V_DISPATCH_C11_REINTERPRET(val_t, uintptr_t, (uintptr_t)(v)))

#define V_DISPATCH_C11_APPLY_2(ptr_t, val_t, func, a, v)                       \
    func((ptr_t)(a), V_DISPATCH_C11_CAST_VALUE(val_t, v))
#define V_DISPATCH_C11_APPLY_3(ptr_t, val_t, func, a, o, n)                    \
    func((ptr_t)(a), V_DISPATCH_C11_CAST_VALUE(val_t, o),                      \
         V_DISPATCH_C11_CAST_VALUE(val_t, n))
#define V_DISPATCH_C11_APPLY(ptr_t, val_t, func, ...)                          \
    V_NR_VARS(V_DISPATCH_C11_APPLY_, __VA_ARGS__)                              \
    (ptr_t, val_t, func, __VA_ARGS__)

#define V_DISPATCH_C11_PTR_CAST(v)                                             \
    V_DISPATCH_C11_REINTERPRET(VSYNC_DISPATCH_PTR_VALUE, uintptr_t,            \
                               (uintptr_t)(v))
#define V_DISPATCH_C11_APPLY_PTR_1(ptr_t, func, a) func((ptr_t)(a))
#define V_DISPATCH_C11_APPLY_PTR_2(ptr_t, func, a, v)                          \
    func((ptr_t)(a), V_DISPATCH_C11_PTR_CAST(v))
#define V_DISPATCH_C11_APPLY_PTR_3(ptr_t, func, a, o, n)                       \
    func((ptr_t)(a), V_DISPATCH_C11_PTR_CAST(o), V_DISPATCH_C11_PTR_CAST(n))
#define V_DISPATCH_C11_APPLY_PTR(ptr_t, func, ...)                             \
    V_NR_VARS(V_DISPATCH_C11_APPLY_PTR_, __VA_ARGS__)(ptr_t, func, __VA_ARGS__)

#define V_DISPATCH_C11_CASE(P, F, mo, a, ...)                                  \
    V_DISPATCH_C11_APPLY(V_MAP_A(P) *, V_MAP_T(P), V_FUNC(P, F, mo), a,        \
                         ##__VA_ARGS__)
#define V_DISPATCH_C11_CASE_CONST(P, F, mo, a, ...)                            \
    V_DISPATCH_C11_APPLY(const V_MAP_A(P) *, V_MAP_T(P), V_FUNC(P, F, mo), a,  \
                         ##__VA_ARGS__)
#define V_DISPATCH_C11_CASE_PTR(P, F, mo, a, ...)                              \
    V_DISPATCH_C11_APPLY_PTR(V_MAP_A(P) *, V_FUNC(P, F, mo), a, ##__VA_ARGS__)
#define V_DISPATCH_C11_CASE_PTR_CONST(P, F, mo, a, ...)                        \
    V_DISPATCH_C11_APPLY_PTR(const V_MAP_A(P) *, V_FUNC(P, F, mo), a,          \
                             ##__VA_ARGS__)

#define V_DISPATCH_C11_RESULT(a, value)                                        \
    _Generic((a),                                                              \
        vatomic8_t *: (vuint8_t)(value),                                       \
        const vatomic8_t *: (vuint8_t)(value),                                 \
        vatomic16_t *: (vuint16_t)(value),                                     \
        const vatomic16_t *: (vuint16_t)(value),                               \
        vatomic32_t *: (vuint32_t)(value),                                     \
        const vatomic32_t *: (vuint32_t)(value),                               \
        vatomic64_t *: (vuint64_t)(value),                                     \
        const vatomic64_t *: (vuint64_t)(value),                               \
        vatomicptr_t *: (void *)(uintptr_t)(value),                            \
        const vatomicptr_t *: (void *)(uintptr_t)(value),                      \
        vatomicsz_t *: (vsize_t)(value),                                       \
        const vatomicsz_t *: (vsize_t)(value),                                 \
        default: (value))

#define V_DISPATCH_C11_IS_SUPPORTED_MUT(a)                                     \
    _Generic((a), vatomic64_t * : 1, vatomic32_t * : 1, vatomic16_t * : 1,     \
             vatomic8_t * : 1, vatomicptr_t * : 1, vatomicsz_t * : 1,          \
             default : 0)

#define V_DISPATCH_C11_IS_SUPPORTED_CONST(a)                                   \
    _Generic((a), vatomic64_t * : 1, const vatomic64_t * : 1,                  \
             vatomic32_t * : 1, const vatomic32_t * : 1, vatomic16_t * : 1,    \
             const vatomic16_t * : 1, vatomic8_t * : 1,                        \
             const vatomic8_t * : 1, vatomicptr_t * : 1,                       \
             const vatomicptr_t * : 1, vatomicsz_t * : 1,                      \
             const vatomicsz_t * : 1, default : 0)

#define V_DISPATCH_C11_UNSUPPORTED_CHECK(cond) (V_DISPATCH_EXPR_ASSERT(cond), 0)

#define V_DISPATCH_C11_ALL_CASES(F, mo, a, ...)                                   \
    vatomic64_t                                                                   \
        * : V_DISPATCH_C11_CASE(vatomic64, F, mo, a, ##__VA_ARGS__),              \
            vatomic32_t                                                           \
                * : V_DISPATCH_C11_CASE(vatomic32, F, mo, a, ##__VA_ARGS__),      \
                    vatomic16_t                                                   \
                        * : V_DISPATCH_C11_CASE(vatomic16, F, mo, a,              \
                                                ##__VA_ARGS__),                   \
                            vatomic8_t                                            \
                                * : V_DISPATCH_C11_CASE(vatomic8, F, mo, a,       \
                                                        ##__VA_ARGS__),           \
                                    vatomicptr_t                                  \
                                        * : V_DISPATCH_C11_CASE_PTR(              \
                                                VSYNC_DISPATCH_PTR_PREFIX, F,     \
                                                mo, a, ##__VA_ARGS__),            \
                                            vatomicsz_t                           \
                                                * : V_DISPATCH_C11_CASE(          \
                                                        VSYNC_DISPATCH_SZ_PREFIX, \
                                                        F, mo, a,                 \
                                                        ##__VA_ARGS__)

#define V_DISPATCH_C11_ALL_CONST_CASES(F, mo, a, ...)                                 \
    V_DISPATCH_C11_ALL_CASES(F, mo, a, ##__VA_ARGS__),                                \
        const vatomic64_t                                                             \
            * : V_DISPATCH_C11_CASE_CONST(vatomic64, F, mo, a, ##__VA_ARGS__),        \
                const vatomic32_t                                                     \
                    * : V_DISPATCH_C11_CASE_CONST(vatomic32, F, mo, a,                \
                                                  ##__VA_ARGS__),                     \
                        const vatomic16_t                                             \
                            * : V_DISPATCH_C11_CASE_CONST(vatomic16, F, mo, a,        \
                                                          ##__VA_ARGS__),             \
                                const vatomic8_t                                      \
                                    * : V_DISPATCH_C11_CASE_CONST(                    \
                                            vatomic8, F, mo, a,                       \
                                            ##__VA_ARGS__),                           \
                                        const vatomicptr_t                            \
                                            * : V_DISPATCH_C11_CASE_PTR_CONST(        \
                                                    VSYNC_DISPATCH_PTR_PREFIX,        \
                                                    F, mo, a, ##__VA_ARGS__),         \
                                                const vatomicsz_t                     \
                                                    * : V_DISPATCH_C11_CASE_CONST(    \
                                                            VSYNC_DISPATCH_SZ_PREFIX, \
                                                            F, mo, a,                 \
                                                            ##__VA_ARGS__)

#define V_DISPATCH_C11_32_CASES(F, mo, a, ...)                                 \
    vatomic64_t                                                                \
        * : V_DISPATCH_C11_CASE(vatomic64, F, mo, a, ##__VA_ARGS__),           \
            vatomic32_t                                                        \
                * : V_DISPATCH_C11_CASE(vatomic32, F, mo, a, ##__VA_ARGS__),   \
                    vatomicptr_t                                               \
                        * : V_DISPATCH_C11_CASE_PTR(VSYNC_DISPATCH_PTR_PREFIX, \
                                                    F, mo, a, ##__VA_ARGS__),  \
                            vatomicsz_t * : V_DISPATCH_C11_CASE(               \
                                                VSYNC_DISPATCH_SZ_PREFIX, F,   \
                                                mo, a, ##__VA_ARGS__)

#define V_DISPATCH_C11_32_CONST_CASES(F, mo, a, ...)                           \
    V_DISPATCH_C11_32_CASES(F, mo, a, ##__VA_ARGS__),                          \
        const vatomic64_t                                                      \
            * : V_DISPATCH_C11_CASE_CONST(vatomic64, F, mo, a, ##__VA_ARGS__), \
                const vatomic32_t                                              \
                    * : V_DISPATCH_C11_CASE_CONST(vatomic32, F, mo, a,         \
                                                  ##__VA_ARGS__),              \
                        const vatomicptr_t                                     \
                            * : V_DISPATCH_C11_CASE_PTR_CONST(                 \
                                    VSYNC_DISPATCH_PTR_PREFIX, F, mo, a,       \
                                    ##__VA_ARGS__),                            \
                                const vatomicsz_t                              \
                                    * : V_DISPATCH_C11_CASE_CONST(             \
                                            VSYNC_DISPATCH_SZ_PREFIX, F, mo,   \
                                            a, ##__VA_ARGS__)

#define V_DISPATCH_C11_GENERIC_ALL_MUT(F, mo, a, ...)                          \
    _Generic((a), V_DISPATCH_C11_ALL_CASES(F, mo, a, ##__VA_ARGS__), default   \
             : V_DISPATCH_C11_UNSUPPORTED_CHECK(                               \
                 V_DISPATCH_C11_IS_SUPPORTED_MUT(a)))
#define V_DISPATCH_C11_GENERIC_ALL_CONST(F, mo, a, ...)                        \
    _Generic((a), V_DISPATCH_C11_ALL_CONST_CASES(F, mo, a, ##__VA_ARGS__),     \
             default                                                           \
             : V_DISPATCH_C11_UNSUPPORTED_CHECK(                               \
                 V_DISPATCH_C11_IS_SUPPORTED_CONST(a)))

#define V_DISPATCH_C11_GENERIC_INT_MUT(F, mo, a, ...)                          \
    V_DISPATCH_C11_GENERIC_ALL_MUT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_C11_GENERIC_INT_CONST(F, mo, a, ...)                        \
    V_DISPATCH_C11_GENERIC_ALL_CONST(F, mo, a, ##__VA_ARGS__)

#define V_DISPATCH_C11_GENERIC_32_MUT(F, mo, a, ...)                           \
    _Generic((a), V_DISPATCH_C11_32_CASES(F, mo, a, ##__VA_ARGS__), default    \
             : V_DISPATCH_C11_UNSUPPORTED_CHECK(                               \
                 V_DISPATCH_C11_IS_SUPPORTED_MUT(a)))
#define V_DISPATCH_C11_GENERIC_32_CONST(F, mo, a, ...)                         \
    _Generic((a), V_DISPATCH_C11_32_CONST_CASES(F, mo, a, ##__VA_ARGS__),      \
             default                                                           \
             : V_DISPATCH_C11_UNSUPPORTED_CHECK(                               \
                 V_DISPATCH_C11_IS_SUPPORTED_CONST(a)))

#define V_DISPATCH(S, F, mo, a, ...)                                           \
    V_CONCAT(V_DISPATCH_, S)(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST(S, F, mo, a, ...)                                     \
    V_CONCAT(V_DISPATCH_CONST_, S)(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32(S, F, mo, a, ...)                                         \
    V_CONCAT(V_DISPATCH32_, S)(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST(S, F, mo, a, ...)                                   \
    V_CONCAT(V_DISPATCH32_CONST_, S)(F, mo, a, ##__VA_ARGS__)

#define V_DISPATCH_ALL(F, mo, a, ...)                                          \
    V_DISPATCH_C11_GENERIC_ALL_MUT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_ALL_RET(F, mo, a, ...)                                      \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_ALL_MUT(F, mo, a, ##__VA_ARGS__))
#define V_DISPATCH_CONST_ALL(F, mo, a, ...)                                    \
    V_DISPATCH_C11_GENERIC_ALL_CONST(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST_ALL_RET(F, mo, a, ...)                                \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_ALL_CONST(F, mo, a, ##__VA_ARGS__))

#define V_DISPATCH_INT(F, mo, a, ...)                                          \
    V_DISPATCH_C11_GENERIC_INT_MUT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_INT_RET(F, mo, a, ...)                                      \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_INT_MUT(F, mo, a, ##__VA_ARGS__))
#define V_DISPATCH_CONST_INT(F, mo, a, ...)                                    \
    V_DISPATCH_C11_GENERIC_INT_CONST(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH_CONST_INT_RET(F, mo, a, ...)                                \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_INT_CONST(F, mo, a, ##__VA_ARGS__))

#define V_DISPATCH32_ALL(F, mo, a, ...)                                        \
    V_DISPATCH_C11_GENERIC_32_MUT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_ALL_RET(F, mo, a, ...)                                    \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_32_MUT(F, mo, a, ##__VA_ARGS__))
#define V_DISPATCH32_CONST_ALL(F, mo, a, ...)                                  \
    V_DISPATCH_C11_GENERIC_32_CONST(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST_ALL_RET(F, mo, a, ...)                              \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_32_CONST(F, mo, a, ##__VA_ARGS__))
#define V_DISPATCH32_INT(F, mo, a, ...)                                        \
    V_DISPATCH_C11_GENERIC_32_MUT(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_INT_RET(F, mo, a, ...)                                    \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_32_MUT(F, mo, a, ##__VA_ARGS__))
#define V_DISPATCH32_CONST_INT(F, mo, a, ...)                                  \
    V_DISPATCH_C11_GENERIC_32_CONST(F, mo, a, ##__VA_ARGS__)
#define V_DISPATCH32_CONST_INT_RET(F, mo, a, ...)                              \
    V_DISPATCH_C11_RESULT(                                                     \
        a, V_DISPATCH_C11_GENERIC_32_CONST(F, mo, a, ##__VA_ARGS__))

#endif /* VATOMIC_INTERNAL_DISPATCH_C11_H */
