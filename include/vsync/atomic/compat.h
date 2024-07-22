/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2023-2024. All rights reserved.
 * Author: Huawei Dresden Research Center
 */
#ifndef VATOMIC_COMPAT_H
#define VATOMIC_COMPAT_H
/*******************************************************************************
 * @file compat.h
 * @brief Set of functions backward compatible with libvsync 1.0
 *
 * These functions are deprecated. Please, use the new vatomic interface.
 ******************************************************************************/
/* !!!Warning: File generated by tmpl; DO NOT EDIT.!!! */

#include <vsync/atomic/core.h>

/* atomic initializer */
#define ATOMIC_INIT(v) VATOMIC_INIT(v)

/* type mapping */
typedef vatomic32_t V_DEPRECATED atomic_t;
typedef vatomic32_t V_DEPRECATED atomic32_t;
typedef vatomic64_t V_DEPRECATED atomic64_t;
typedef vatomicptr_t V_DEPRECATED atomicptr_t;

/*******************************************************************************
 * read/write/init functions
 ******************************************************************************/

/**
 * Deprecated: See vatomic32_read
 */
static inline vuint32_t V_DEPRECATED
atomic_read(atomic_t *a)
{
    return vatomic32_read(a);
}

/**
 * Deprecated: See vatomic32_read_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_read_acq(atomic_t *a)
{
    return vatomic32_read_acq(a);
}

/**
 * Deprecated: See vatomic32_read_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_read_rlx(atomic_t *a)
{
    return vatomic32_read_rlx(a);
}

/**
 * Deprecated: See vatomic32_read
 */
static inline vuint32_t V_DEPRECATED
atomic32_read(atomic32_t *a)
{
    return vatomic32_read(a);
}

/**
 * Deprecated: See vatomic32_read_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_read_acq(atomic32_t *a)
{
    return vatomic32_read_acq(a);
}

/**
 * Deprecated: See vatomic32_read_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_read_rlx(atomic32_t *a)
{
    return vatomic32_read_rlx(a);
}

/**
 * Deprecated: See vatomic64_read
 */
static inline vuint64_t V_DEPRECATED
atomic64_read(atomic64_t *a)
{
    return vatomic64_read(a);
}

/**
 * Deprecated: See vatomic64_read_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_read_acq(atomic64_t *a)
{
    return vatomic64_read_acq(a);
}

/**
 * Deprecated: See vatomic64_read_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_read_rlx(atomic64_t *a)
{
    return vatomic64_read_rlx(a);
}

/**
 * Deprecated: See vatomicptr_read
 */
static inline void *V_DEPRECATED
atomicptr_read(atomicptr_t *a)
{
    return vatomicptr_read(a);
}

/**
 * Deprecated: See vatomicptr_read_acq
 */
static inline void *V_DEPRECATED
atomicptr_read_acq(atomicptr_t *a)
{
    return vatomicptr_read_acq(a);
}

/**
 * Deprecated: See vatomicptr_read_rlx
 */
static inline void *V_DEPRECATED
atomicptr_read_rlx(atomicptr_t *a)
{
    return vatomicptr_read_rlx(a);
}

/**
 * Deprecated: See vatomic32_write
 */
static inline void V_DEPRECATED
atomic_write(atomic_t *a, vuint32_t v)
{
    vatomic32_write(a, v);
}

/**
 * Deprecated: See vatomic32_write_rel
 */
static inline void V_DEPRECATED
atomic_write_rel(atomic_t *a, vuint32_t v)
{
    vatomic32_write_rel(a, v);
}

/**
 * Deprecated: See vatomic32_write_rlx
 */
static inline void V_DEPRECATED
atomic_write_rlx(atomic_t *a, vuint32_t v)
{
    vatomic32_write_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_write
 */
static inline void V_DEPRECATED
atomic32_write(atomic32_t *a, vuint32_t v)
{
    vatomic32_write(a, v);
}

/**
 * Deprecated: See vatomic32_write_rel
 */
static inline void V_DEPRECATED
atomic32_write_rel(atomic32_t *a, vuint32_t v)
{
    vatomic32_write_rel(a, v);
}

/**
 * Deprecated: See vatomic32_write_rlx
 */
static inline void V_DEPRECATED
atomic32_write_rlx(atomic32_t *a, vuint32_t v)
{
    vatomic32_write_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_write
 */
static inline void V_DEPRECATED
atomic64_write(atomic64_t *a, vuint64_t v)
{
    vatomic64_write(a, v);
}

/**
 * Deprecated: See vatomic64_write_rel
 */
static inline void V_DEPRECATED
atomic64_write_rel(atomic64_t *a, vuint64_t v)
{
    vatomic64_write_rel(a, v);
}

/**
 * Deprecated: See vatomic64_write_rlx
 */
static inline void V_DEPRECATED
atomic64_write_rlx(atomic64_t *a, vuint64_t v)
{
    vatomic64_write_rlx(a, v);
}

/**
 * Deprecated: See vatomicptr_write
 */
static inline void V_DEPRECATED
atomicptr_write(atomicptr_t *a, void *v)
{
    vatomicptr_write(a, v);
}

/**
 * Deprecated: See vatomicptr_write_rel
 */
static inline void V_DEPRECATED
atomicptr_write_rel(atomicptr_t *a, void *v)
{
    vatomicptr_write_rel(a, v);
}

/**
 * Deprecated: See vatomicptr_write_rlx
 */
static inline void V_DEPRECATED
atomicptr_write_rlx(atomicptr_t *a, void *v)
{
    vatomicptr_write_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_init
 */
static inline void V_DEPRECATED
atomic_init(atomic_t *a, vuint32_t v)
{
    vatomic32_init(a, v);
}

/**
 * Deprecated: See vatomic32_init
 */
static inline void V_DEPRECATED
atomic32_init(atomic32_t *a, vuint32_t v)
{
    vatomic32_init(a, v);
}

/**
 * Deprecated: See vatomic64_init
 */
static inline void V_DEPRECATED
atomic64_init(atomic64_t *a, vuint64_t v)
{
    vatomic64_init(a, v);
}

/**
 * Deprecated: See vatomicptr_init
 */
static inline void V_DEPRECATED
atomicptr_init(atomicptr_t *a, void *v)
{
    vatomicptr_init(a, v);
}

/*******************************************************************************
 * cmpxchg/xchg functions
 ******************************************************************************/

/**
 * Deprecated: See vatomic32_xchg
 */
static inline vuint32_t V_DEPRECATED
atomic_xchg(atomic_t *a, vuint32_t v)
{
    return vatomic32_xchg(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg
 */
static inline vuint32_t V_DEPRECATED
atomic_cmpxchg(atomic_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_xchg_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_xchg_acq(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_cmpxchg_acq(atomic_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg_acq(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_xchg_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_xchg_rel(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_cmpxchg_rel(atomic_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg_rel(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_xchg_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_xchg_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_cmpxchg_rlx(atomic_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg_rlx(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg
 */
static inline vuint32_t V_DEPRECATED
atomic32_xchg(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xchg(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg
 */
static inline vuint32_t V_DEPRECATED
atomic32_cmpxchg(atomic32_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_xchg_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xchg_acq(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_cmpxchg_acq(atomic32_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg_acq(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_xchg_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xchg_rel(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_cmpxchg_rel(atomic32_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg_rel(a, c, v);
}

/**
 * Deprecated: See vatomic32_xchg_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_xchg_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xchg_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_cmpxchg_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_cmpxchg_rlx(atomic32_t *a, vuint32_t c, vuint32_t v)
{
    return vatomic32_cmpxchg_rlx(a, c, v);
}

/**
 * Deprecated: See vatomic64_xchg
 */
static inline vuint64_t V_DEPRECATED
atomic64_xchg(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xchg(a, v);
}

/**
 * Deprecated: See vatomic64_cmpxchg
 */
static inline vuint64_t V_DEPRECATED
atomic64_cmpxchg(atomic64_t *a, vuint64_t c, vuint64_t v)
{
    return vatomic64_cmpxchg(a, c, v);
}

/**
 * Deprecated: See vatomic64_xchg_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_xchg_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xchg_acq(a, v);
}

/**
 * Deprecated: See vatomic64_cmpxchg_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_cmpxchg_acq(atomic64_t *a, vuint64_t c, vuint64_t v)
{
    return vatomic64_cmpxchg_acq(a, c, v);
}

/**
 * Deprecated: See vatomic64_xchg_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_xchg_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xchg_rel(a, v);
}

/**
 * Deprecated: See vatomic64_cmpxchg_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_cmpxchg_rel(atomic64_t *a, vuint64_t c, vuint64_t v)
{
    return vatomic64_cmpxchg_rel(a, c, v);
}

/**
 * Deprecated: See vatomic64_xchg_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_xchg_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xchg_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_cmpxchg_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_cmpxchg_rlx(atomic64_t *a, vuint64_t c, vuint64_t v)
{
    return vatomic64_cmpxchg_rlx(a, c, v);
}

/**
 * Deprecated: See vatomicptr_xchg
 */
static inline void *V_DEPRECATED
atomicptr_xchg(atomicptr_t *a, void *v)
{
    return vatomicptr_xchg(a, v);
}

/**
 * Deprecated: See vatomicptr_cmpxchg
 */
static inline void *V_DEPRECATED
atomicptr_cmpxchg(atomicptr_t *a, void *c, void *v)
{
    return vatomicptr_cmpxchg(a, c, v);
}

/**
 * Deprecated: See vatomicptr_xchg_acq
 */
static inline void *V_DEPRECATED
atomicptr_xchg_acq(atomicptr_t *a, void *v)
{
    return vatomicptr_xchg_acq(a, v);
}

/**
 * Deprecated: See vatomicptr_cmpxchg_acq
 */
static inline void *V_DEPRECATED
atomicptr_cmpxchg_acq(atomicptr_t *a, void *c, void *v)
{
    return vatomicptr_cmpxchg_acq(a, c, v);
}

/**
 * Deprecated: See vatomicptr_xchg_rel
 */
static inline void *V_DEPRECATED
atomicptr_xchg_rel(atomicptr_t *a, void *v)
{
    return vatomicptr_xchg_rel(a, v);
}

/**
 * Deprecated: See vatomicptr_cmpxchg_rel
 */
static inline void *V_DEPRECATED
atomicptr_cmpxchg_rel(atomicptr_t *a, void *c, void *v)
{
    return vatomicptr_cmpxchg_rel(a, c, v);
}

/**
 * Deprecated: See vatomicptr_xchg_rlx
 */
static inline void *V_DEPRECATED
atomicptr_xchg_rlx(atomicptr_t *a, void *v)
{
    return vatomicptr_xchg_rlx(a, v);
}

/**
 * Deprecated: See vatomicptr_cmpxchg_rlx
 */
static inline void *V_DEPRECATED
atomicptr_cmpxchg_rlx(atomicptr_t *a, void *c, void *v)
{
    return vatomicptr_cmpxchg_rlx(a, c, v);
}

/*******************************************************************************
 * add, sub, or, and, xor
 ******************************************************************************/

/**
 * Deprecated: See vatomic32_add_get
 */
static inline vuint32_t V_DEPRECATED
atomic_add(atomic_t *a, vuint32_t v)
{
    return vatomic32_add_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_add
 */
static inline vuint32_t V_DEPRECATED
atomic_get_add(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_add(a, v);
}

/**
 * Deprecated: See vatomic32_add_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_add_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_add_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_add_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_add_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_add_acq(a, v);
}

/**
 * Deprecated: See vatomic32_add_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_add_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_add_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_add_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_add_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_add_rel(a, v);
}

/**
 * Deprecated: See vatomic32_add_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_add_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_add_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_add_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_add_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_add_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get
 */
static inline vuint32_t V_DEPRECATED
atomic_sub(atomic_t *a, vuint32_t v)
{
    return vatomic32_sub_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub
 */
static inline vuint32_t V_DEPRECATED
atomic_get_sub(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_sub(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_sub_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_sub_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_sub_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_sub_acq(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_sub_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_sub_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_sub_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_sub_rel(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_sub_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_sub_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_sub_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_sub_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get
 */
static inline vuint32_t V_DEPRECATED
atomic_xor(atomic_t *a, vuint32_t v)
{
    return vatomic32_xor_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor
 */
static inline vuint32_t V_DEPRECATED
atomic_get_xor(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_xor(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_xor_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_xor_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_xor_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_xor_acq(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_xor_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_xor_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_xor_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_xor_rel(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_xor_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_xor_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_xor_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_xor_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_and_get
 */
static inline vuint32_t V_DEPRECATED
atomic_and(atomic_t *a, vuint32_t v)
{
    return vatomic32_and_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_and
 */
static inline vuint32_t V_DEPRECATED
atomic_get_and(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_and(a, v);
}

/**
 * Deprecated: See vatomic32_and_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_and_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_and_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_and_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_and_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_and_acq(a, v);
}

/**
 * Deprecated: See vatomic32_and_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_and_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_and_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_and_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_and_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_and_rel(a, v);
}

/**
 * Deprecated: See vatomic32_and_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_and_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_and_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_and_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_and_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_and_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_or_get
 */
static inline vuint32_t V_DEPRECATED
atomic_or(atomic_t *a, vuint32_t v)
{
    return vatomic32_or_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_or
 */
static inline vuint32_t V_DEPRECATED
atomic_get_or(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_or(a, v);
}

/**
 * Deprecated: See vatomic32_or_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_or_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_or_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_or_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_or_acq(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_or_acq(a, v);
}

/**
 * Deprecated: See vatomic32_or_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_or_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_or_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_or_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_or_rel(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_or_rel(a, v);
}

/**
 * Deprecated: See vatomic32_or_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_or_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_or_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_or_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_or_rlx(atomic_t *a, vuint32_t v)
{
    return vatomic32_get_or_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_add_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_add(atomic32_t *a, vuint32_t v)
{
    return vatomic32_add_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_add
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_add(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_add(a, v);
}

/**
 * Deprecated: See vatomic32_add_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_add_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_add_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_add_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_add_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_add_acq(a, v);
}

/**
 * Deprecated: See vatomic32_add_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_add_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_add_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_add_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_add_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_add_rel(a, v);
}

/**
 * Deprecated: See vatomic32_add_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_add_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_add_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_add_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_add_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_add_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_sub(atomic32_t *a, vuint32_t v)
{
    return vatomic32_sub_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_sub(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_sub(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_sub_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_sub_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_sub_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_sub_acq(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_sub_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_sub_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_sub_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_sub_rel(a, v);
}

/**
 * Deprecated: See vatomic32_sub_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_sub_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_sub_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_sub_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_sub_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_sub_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_xor(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xor_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_xor(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_xor(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_xor_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xor_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_xor_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_xor_acq(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_xor_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xor_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_xor_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_xor_rel(a, v);
}

/**
 * Deprecated: See vatomic32_xor_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_xor_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_xor_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_xor_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_xor_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_xor_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_and_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_and(atomic32_t *a, vuint32_t v)
{
    return vatomic32_and_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_and
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_and(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_and(a, v);
}

/**
 * Deprecated: See vatomic32_and_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_and_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_and_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_and_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_and_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_and_acq(a, v);
}

/**
 * Deprecated: See vatomic32_and_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_and_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_and_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_and_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_and_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_and_rel(a, v);
}

/**
 * Deprecated: See vatomic32_and_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_and_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_and_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_and_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_and_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_and_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_or_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_or(atomic32_t *a, vuint32_t v)
{
    return vatomic32_or_get(a, v);
}

/**
 * Deprecated: See vatomic32_get_or
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_or(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_or(a, v);
}

/**
 * Deprecated: See vatomic32_or_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_or_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_or_get_acq(a, v);
}

/**
 * Deprecated: See vatomic32_get_or_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_or_acq(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_or_acq(a, v);
}

/**
 * Deprecated: See vatomic32_or_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_or_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_or_get_rel(a, v);
}

/**
 * Deprecated: See vatomic32_get_or_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_or_rel(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_or_rel(a, v);
}

/**
 * Deprecated: See vatomic32_or_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_or_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_or_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic32_get_or_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_or_rlx(atomic32_t *a, vuint32_t v)
{
    return vatomic32_get_or_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_add_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_add(atomic64_t *a, vuint64_t v)
{
    return vatomic64_add_get(a, v);
}

/**
 * Deprecated: See vatomic64_get_add
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_add(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_add(a, v);
}

/**
 * Deprecated: See vatomic64_add_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_add_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_add_get_acq(a, v);
}

/**
 * Deprecated: See vatomic64_get_add_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_add_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_add_acq(a, v);
}

/**
 * Deprecated: See vatomic64_add_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_add_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_add_get_rel(a, v);
}

/**
 * Deprecated: See vatomic64_get_add_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_add_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_add_rel(a, v);
}

/**
 * Deprecated: See vatomic64_add_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_add_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_add_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_get_add_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_add_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_add_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_sub_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_sub(atomic64_t *a, vuint64_t v)
{
    return vatomic64_sub_get(a, v);
}

/**
 * Deprecated: See vatomic64_get_sub
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_sub(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_sub(a, v);
}

/**
 * Deprecated: See vatomic64_sub_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_sub_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_sub_get_acq(a, v);
}

/**
 * Deprecated: See vatomic64_get_sub_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_sub_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_sub_acq(a, v);
}

/**
 * Deprecated: See vatomic64_sub_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_sub_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_sub_get_rel(a, v);
}

/**
 * Deprecated: See vatomic64_get_sub_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_sub_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_sub_rel(a, v);
}

/**
 * Deprecated: See vatomic64_sub_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_sub_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_sub_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_get_sub_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_sub_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_sub_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_xor_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_xor(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xor_get(a, v);
}

/**
 * Deprecated: See vatomic64_get_xor
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_xor(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_xor(a, v);
}

/**
 * Deprecated: See vatomic64_xor_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_xor_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xor_get_acq(a, v);
}

/**
 * Deprecated: See vatomic64_get_xor_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_xor_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_xor_acq(a, v);
}

/**
 * Deprecated: See vatomic64_xor_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_xor_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xor_get_rel(a, v);
}

/**
 * Deprecated: See vatomic64_get_xor_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_xor_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_xor_rel(a, v);
}

/**
 * Deprecated: See vatomic64_xor_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_xor_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_xor_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_get_xor_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_xor_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_xor_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_and_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_and(atomic64_t *a, vuint64_t v)
{
    return vatomic64_and_get(a, v);
}

/**
 * Deprecated: See vatomic64_get_and
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_and(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_and(a, v);
}

/**
 * Deprecated: See vatomic64_and_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_and_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_and_get_acq(a, v);
}

/**
 * Deprecated: See vatomic64_get_and_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_and_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_and_acq(a, v);
}

/**
 * Deprecated: See vatomic64_and_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_and_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_and_get_rel(a, v);
}

/**
 * Deprecated: See vatomic64_get_and_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_and_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_and_rel(a, v);
}

/**
 * Deprecated: See vatomic64_and_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_and_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_and_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_get_and_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_and_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_and_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_or_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_or(atomic64_t *a, vuint64_t v)
{
    return vatomic64_or_get(a, v);
}

/**
 * Deprecated: See vatomic64_get_or
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_or(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_or(a, v);
}

/**
 * Deprecated: See vatomic64_or_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_or_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_or_get_acq(a, v);
}

/**
 * Deprecated: See vatomic64_get_or_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_or_acq(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_or_acq(a, v);
}

/**
 * Deprecated: See vatomic64_or_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_or_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_or_get_rel(a, v);
}

/**
 * Deprecated: See vatomic64_get_or_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_or_rel(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_or_rel(a, v);
}

/**
 * Deprecated: See vatomic64_or_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_or_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_or_get_rlx(a, v);
}

/**
 * Deprecated: See vatomic64_get_or_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_or_rlx(atomic64_t *a, vuint64_t v)
{
    return vatomic64_get_or_rlx(a, v);
}

/*******************************************************************************
 * increment/decrement
 ******************************************************************************/

/**
 * Deprecated: See vatomic32_inc_get
 */
static inline vuint32_t V_DEPRECATED
atomic_inc(atomic_t *a)
{
    return vatomic32_inc_get(a);
}

/**
 * Deprecated: See vatomic32_get_inc
 */
static inline vuint32_t V_DEPRECATED
atomic_get_inc(atomic_t *a)
{
    return vatomic32_get_inc(a);
}

/**
 * Deprecated: See vatomic32_inc_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_inc_acq(atomic_t *a)
{
    return vatomic32_inc_get_acq(a);
}

/**
 * Deprecated: See vatomic32_get_inc_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_inc_acq(atomic_t *a)
{
    return vatomic32_get_inc_acq(a);
}

/**
 * Deprecated: See vatomic32_inc_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_inc_rel(atomic_t *a)
{
    return vatomic32_inc_get_rel(a);
}

/**
 * Deprecated: See vatomic32_get_inc_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_inc_rel(atomic_t *a)
{
    return vatomic32_get_inc_rel(a);
}

/**
 * Deprecated: See vatomic32_inc_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_inc_rlx(atomic_t *a)
{
    return vatomic32_inc_get_rlx(a);
}

/**
 * Deprecated: See vatomic32_get_inc_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_inc_rlx(atomic_t *a)
{
    return vatomic32_get_inc_rlx(a);
}

/**
 * Deprecated: See vatomic32_dec_get
 */
static inline vuint32_t V_DEPRECATED
atomic_dec(atomic_t *a)
{
    return vatomic32_dec_get(a);
}

/**
 * Deprecated: See vatomic32_get_dec
 */
static inline vuint32_t V_DEPRECATED
atomic_get_dec(atomic_t *a)
{
    return vatomic32_get_dec(a);
}

/**
 * Deprecated: See vatomic32_dec_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_dec_acq(atomic_t *a)
{
    return vatomic32_dec_get_acq(a);
}

/**
 * Deprecated: See vatomic32_get_dec_acq
 */
static inline vuint32_t V_DEPRECATED
atomic_get_dec_acq(atomic_t *a)
{
    return vatomic32_get_dec_acq(a);
}

/**
 * Deprecated: See vatomic32_dec_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_dec_rel(atomic_t *a)
{
    return vatomic32_dec_get_rel(a);
}

/**
 * Deprecated: See vatomic32_get_dec_rel
 */
static inline vuint32_t V_DEPRECATED
atomic_get_dec_rel(atomic_t *a)
{
    return vatomic32_get_dec_rel(a);
}

/**
 * Deprecated: See vatomic32_dec_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_dec_rlx(atomic_t *a)
{
    return vatomic32_dec_get_rlx(a);
}

/**
 * Deprecated: See vatomic32_get_dec_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic_get_dec_rlx(atomic_t *a)
{
    return vatomic32_get_dec_rlx(a);
}

/**
 * Deprecated: See vatomic32_inc_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_inc(atomic32_t *a)
{
    return vatomic32_inc_get(a);
}

/**
 * Deprecated: See vatomic32_get_inc
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_inc(atomic32_t *a)
{
    return vatomic32_get_inc(a);
}

/**
 * Deprecated: See vatomic32_inc_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_inc_acq(atomic32_t *a)
{
    return vatomic32_inc_get_acq(a);
}

/**
 * Deprecated: See vatomic32_get_inc_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_inc_acq(atomic32_t *a)
{
    return vatomic32_get_inc_acq(a);
}

/**
 * Deprecated: See vatomic32_inc_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_inc_rel(atomic32_t *a)
{
    return vatomic32_inc_get_rel(a);
}

/**
 * Deprecated: See vatomic32_get_inc_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_inc_rel(atomic32_t *a)
{
    return vatomic32_get_inc_rel(a);
}

/**
 * Deprecated: See vatomic32_inc_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_inc_rlx(atomic32_t *a)
{
    return vatomic32_inc_get_rlx(a);
}

/**
 * Deprecated: See vatomic32_get_inc_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_inc_rlx(atomic32_t *a)
{
    return vatomic32_get_inc_rlx(a);
}

/**
 * Deprecated: See vatomic32_dec_get
 */
static inline vuint32_t V_DEPRECATED
atomic32_dec(atomic32_t *a)
{
    return vatomic32_dec_get(a);
}

/**
 * Deprecated: See vatomic32_get_dec
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_dec(atomic32_t *a)
{
    return vatomic32_get_dec(a);
}

/**
 * Deprecated: See vatomic32_dec_get_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_dec_acq(atomic32_t *a)
{
    return vatomic32_dec_get_acq(a);
}

/**
 * Deprecated: See vatomic32_get_dec_acq
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_dec_acq(atomic32_t *a)
{
    return vatomic32_get_dec_acq(a);
}

/**
 * Deprecated: See vatomic32_dec_get_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_dec_rel(atomic32_t *a)
{
    return vatomic32_dec_get_rel(a);
}

/**
 * Deprecated: See vatomic32_get_dec_rel
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_dec_rel(atomic32_t *a)
{
    return vatomic32_get_dec_rel(a);
}

/**
 * Deprecated: See vatomic32_dec_get_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_dec_rlx(atomic32_t *a)
{
    return vatomic32_dec_get_rlx(a);
}

/**
 * Deprecated: See vatomic32_get_dec_rlx
 */
static inline vuint32_t V_DEPRECATED
atomic32_get_dec_rlx(atomic32_t *a)
{
    return vatomic32_get_dec_rlx(a);
}

/**
 * Deprecated: See vatomic64_inc_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_inc(atomic64_t *a)
{
    return vatomic64_inc_get(a);
}

/**
 * Deprecated: See vatomic64_get_inc
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_inc(atomic64_t *a)
{
    return vatomic64_get_inc(a);
}

/**
 * Deprecated: See vatomic64_inc_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_inc_acq(atomic64_t *a)
{
    return vatomic64_inc_get_acq(a);
}

/**
 * Deprecated: See vatomic64_get_inc_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_inc_acq(atomic64_t *a)
{
    return vatomic64_get_inc_acq(a);
}

/**
 * Deprecated: See vatomic64_inc_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_inc_rel(atomic64_t *a)
{
    return vatomic64_inc_get_rel(a);
}

/**
 * Deprecated: See vatomic64_get_inc_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_inc_rel(atomic64_t *a)
{
    return vatomic64_get_inc_rel(a);
}

/**
 * Deprecated: See vatomic64_inc_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_inc_rlx(atomic64_t *a)
{
    return vatomic64_inc_get_rlx(a);
}

/**
 * Deprecated: See vatomic64_get_inc_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_inc_rlx(atomic64_t *a)
{
    return vatomic64_get_inc_rlx(a);
}

/**
 * Deprecated: See vatomic64_dec_get
 */
static inline vuint64_t V_DEPRECATED
atomic64_dec(atomic64_t *a)
{
    return vatomic64_dec_get(a);
}

/**
 * Deprecated: See vatomic64_get_dec
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_dec(atomic64_t *a)
{
    return vatomic64_get_dec(a);
}

/**
 * Deprecated: See vatomic64_dec_get_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_dec_acq(atomic64_t *a)
{
    return vatomic64_dec_get_acq(a);
}

/**
 * Deprecated: See vatomic64_get_dec_acq
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_dec_acq(atomic64_t *a)
{
    return vatomic64_get_dec_acq(a);
}

/**
 * Deprecated: See vatomic64_dec_get_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_dec_rel(atomic64_t *a)
{
    return vatomic64_dec_get_rel(a);
}

/**
 * Deprecated: See vatomic64_get_dec_rel
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_dec_rel(atomic64_t *a)
{
    return vatomic64_get_dec_rel(a);
}

/**
 * Deprecated: See vatomic64_dec_get_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_dec_rlx(atomic64_t *a)
{
    return vatomic64_dec_get_rlx(a);
}

/**
 * Deprecated: See vatomic64_get_dec_rlx
 */
static inline vuint64_t V_DEPRECATED
atomic64_get_dec_rlx(atomic64_t *a)
{
    return vatomic64_get_dec_rlx(a);
}

#endif /* VATOMIC_COMPAT_H */
