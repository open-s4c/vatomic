/*
 * Copyright (C) Huawei Technologies Co., Ltd. . All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>
#include <vector>


int g_v[10] = {0};


std::vector<void *> g_values = {0, nullptr, &g_v};

void
assert_match(vsync::atomic<void *> &var, std::atomic<void *> &mirror)
{
    void *v_var    = var.load();
    void *v_mirror = mirror.load();
    if (v_var != v_mirror) {
        std::cerr << "[assert_match] vsync::atomic " << v_var
                  << " =? std::atomic " << v_mirror << std::endl;
    }
    assert(v_var == v_mirror);
}

void
test_init(void)
{
    for (void *val : g_values) {
        std::atomic<void *> mirror(val);
        vsync::atomic<void *> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<void *> mirror(0);
    vsync::atomic<void *> var(0);

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (void *val : g_values) {
            mirror.store(val, static_cast<std::memory_order>(order));
            var.store(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
        }
    }
}

void
test_exchange(void)
{
    std::atomic<void *> mirror(0);
    vsync::atomic<void *> var(0);
    void *r_var    = 0;
    void *r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (void *val : g_values) {
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
    std::atomic<void *> mirror(0);
    vsync::atomic<void *> var(0);

    bool r_var    = false;
    bool r_mirror = false;

    void *v_var    = 0;
    void *v_mirror = 0;

    const vsize_t repeat = 3;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (void *val : g_values) {
            v_var = v_mirror = val;
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_strong(
                    v_var, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_strong(
                    v_mirror, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert_match(var, mirror);
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }

        for (void *val : g_values) {
            v_var = v_mirror = val;
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_weak(
                    v_var, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_weak(
                    v_mirror, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert_match(var, mirror);
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }
    }
}


void
test_INC_overload(void)
{
    std::atomic<void *> mirror(0);
    vsync::atomic<void *> var(0);

    void *r_var    = 0;
    void *r_mirror = 0;

    for (void *val : g_values) {
        mirror = var = val;
        r_mirror     = mirror++;
        r_var        = var++;
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }

    for (void *val : g_values) {
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
    std::atomic<void *> mirror(0);
    vsync::atomic<void *> var(0);

    void *r_var    = 0;
    void *r_mirror = 0;

    for (void *val : g_values) {
        mirror = var = val;
        r_mirror     = mirror--;
        r_var        = var--;
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }

    for (void *val : g_values) {
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
    return 0;
}
