/*
 * Copyright (C) Huawei Technologies Co., Ltd. . All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>
#include <vector>


std::vector<MAP_T_s8> g_values = {0, MAP_VALS_s8};

void
assert_match(vsync::atomic<MAP_T_s8> &var, std::atomic<MAP_T_s8> &mirror)
{
    MAP_T_s8 v_var    = var.load();
    MAP_T_s8 v_mirror = mirror.load();
    if (v_var != v_mirror) {
        std::cerr << "[assert_match] vsync::atomic " << v_var
                  << " =? std::atomic " << v_mirror << std::endl;
    }
    assert(v_var == v_mirror);
}

void
test_init(void)
{
    for (MAP_T_s8 val : g_values) {
        std::atomic<MAP_T_s8> mirror(val);
        vsync::atomic<MAP_T_s8> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            mirror.store(val, static_cast<std::memory_order>(order));
            var.store(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
        }
    }
}

void
test_exchange(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);
    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            r_mirror =
                mirror.exchange(val, static_cast<std::memory_order>(order));
            r_var = var.exchange(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}

void
test_compare_exchange(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    bool r_var    = false;
    bool r_mirror = false;

    MAP_T_s8 v_var    = 0;
    MAP_T_s8 v_mirror = 0;

    constexpr vsize_t repeat = 3;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_strong(
                    v_var, val, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_strong(
                    v_mirror, val, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert_match(var, mirror);
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }

        for (MAP_T_s8 val : g_values) {
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_weak(
                    v_var, val, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_weak(
                    v_mirror, val, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert_match(var, mirror);
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }
    }
}

void
test_fetch_add(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            r_mirror =
                mirror.fetch_add(val, static_cast<std::memory_order>(order));
            r_var = var.fetch_add(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}
void
test_fetch_sub(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            r_mirror =
                mirror.fetch_sub(val, static_cast<std::memory_order>(order));
            r_var = var.fetch_sub(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}
void
test_fetch_and(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            r_mirror =
                mirror.fetch_and(val, static_cast<std::memory_order>(order));
            r_var = var.fetch_and(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}
void
test_fetch_or(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            r_mirror =
                mirror.fetch_or(val, static_cast<std::memory_order>(order));
            r_var = var.fetch_or(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}
void
test_fetch_xor(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (MAP_T_s8 val : g_values) {
            r_mirror =
                mirror.fetch_xor(val, static_cast<std::memory_order>(order));
            r_var = var.fetch_xor(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}


void
test_AND_overload(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    for (MAP_T_s8 val : g_values) {
        mirror &= val;
        var &= val;
        assert_match(var, mirror);
    }
}
void
test_OR_overload(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    for (MAP_T_s8 val : g_values) {
        mirror |= val;
        var |= val;
        assert_match(var, mirror);
    }
}
void
test_XOR_overload(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    for (MAP_T_s8 val : g_values) {
        mirror ^= val;
        var ^= val;
        assert_match(var, mirror);
    }
}


void
test_INC_overload(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (MAP_T_s8 val : g_values) {
        mirror = var = val;
        r_mirror     = mirror++;
        r_var        = var++;
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }

    for (MAP_T_s8 val : g_values) {
        mirror = var = val;
        r_mirror     = ++mirror;
        r_var        = ++var;
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }
}
void
test_DEC_overload(void)
{
    std::atomic<MAP_T_s8> mirror(0);
    vsync::atomic<MAP_T_s8> var(0);

    MAP_T_s8 r_var    = 0;
    MAP_T_s8 r_mirror = 0;

    for (MAP_T_s8 val : g_values) {
        mirror = var = val;
        r_mirror     = mirror--;
        r_var        = var--;
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }

    for (MAP_T_s8 val : g_values) {
        mirror = var = val;
        r_mirror     = --mirror;
        r_var        = --var;
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }
}


int
main(void)
{
    test_init();
    test_store();
    test_exchange();
    test_compare_exchange();
    test_fetch_add();
    test_fetch_sub();
    test_fetch_and();
    test_fetch_or();
    test_fetch_xor();
    test_INC_overload();
    test_DEC_overload();
    test_AND_overload();
    test_OR_overload();
    test_XOR_overload();
    return 0;
}
