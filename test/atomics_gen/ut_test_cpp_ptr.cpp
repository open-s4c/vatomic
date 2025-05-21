/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>
#include <vector>


int g_v[10] = {0};

typedef int custom_type_t;

#define ARR_LEN 10U
custom_type_t g_arr[ARR_LEN] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

std::vector<custom_type_t *> g_values = {&g_v[0], &g_v[1]};
std::vector<ptrdiff_t> g_offsets      = {0x1, 0xF, 0x2};


void
assert_match(vsync::atomic<custom_type_t *> &var,
             std::atomic<custom_type_t *> &mirror)
{
    custom_type_t *v_var    = var.load();
    custom_type_t *v_mirror = mirror.load();
    if (v_var != v_mirror) {
        std::cerr << "[assert_match] vsync::atomic " << v_var
                  << " =? std::atomic " << v_mirror << std::endl;
    }
    assert(v_var == v_mirror);
}

void
test_init(void)
{
    for (auto val : g_values) {
        std::atomic<custom_type_t *> mirror(val);
        vsync::atomic<custom_type_t *> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<custom_type_t *> mirror(0);
    vsync::atomic<custom_type_t *> var(0);

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (auto val : g_values) {
            mirror.store(val, static_cast<std::memory_order>(order));
            var.store(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
        }
    }
}

void
test_exchange(void)
{
    std::atomic<custom_type_t *> mirror(0);
    vsync::atomic<custom_type_t *> var(0);
    custom_type_t *r_var    = 0;
    custom_type_t *r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (auto val : g_values) {
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
    std::atomic<custom_type_t *> mirror(nullptr);
    vsync::atomic<custom_type_t *> var(nullptr);

    bool r_var    = false;
    bool r_mirror = false;

    custom_type_t *v_var    = nullptr;
    custom_type_t *v_mirror = nullptr;

    const vsize_t repeat = 3;


    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (auto val : g_values) {
            v_var = v_mirror = val;
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_strong(
                    v_var, v_var, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_strong(
                    v_mirror, v_mirror, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert_match(var, mirror);
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }

        for (auto val : g_values) {
            v_var = v_mirror = val;
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_weak(
                    v_var, v_var, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_weak(
                    v_mirror, v_var, static_cast<vsync::memory_order>(order),
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
    std::atomic<custom_type_t *> mirror(0);
    vsync::atomic<custom_type_t *> var(0);

    custom_type_t *r_var    = 0;
    custom_type_t *r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (ptrdiff_t val : g_offsets) {
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
    std::atomic<custom_type_t *> mirror(0);
    vsync::atomic<custom_type_t *> var(0);

    custom_type_t *r_var    = 0;
    custom_type_t *r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (ptrdiff_t val : g_offsets) {
            r_mirror =
                mirror.fetch_sub(val, static_cast<std::memory_order>(order));
            r_var = var.fetch_sub(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}

void
test_INC_overload(void)
{
    std::atomic<custom_type_t *> mirror(&g_arr[0]);
    vsync::atomic<custom_type_t *> var(&g_arr[0]);

    custom_type_t *r_var    = 0;
    custom_type_t *r_mirror = 0;

    for (size_t i = 0; i < ARR_LEN; i++) {
        assert(*mirror == g_arr[i]);
        assert(*var == g_arr[i]);
        r_mirror = mirror++;
        r_var    = var++;
        assert(*r_mirror == g_arr[i]);
        assert(*r_var == g_arr[i]);
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }

    mirror = var = &g_arr[0];

    for (size_t i = 0; i < ARR_LEN; i++) {
        assert(*mirror == g_arr[i]);
        assert(*var == g_arr[i]);
        r_mirror = ++mirror;
        r_var    = ++var;

        if (i < (ARR_LEN - 1)) {
            assert(*mirror == g_arr[i + 1]);
            assert(*var == g_arr[i + 1]);
        }
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }
}
void
test_DEC_overload(void)
{
    std::atomic<custom_type_t *> mirror(&g_arr[ARR_LEN - 1]);
    vsync::atomic<custom_type_t *> var(&g_arr[ARR_LEN - 1]);

    custom_type_t *r_var    = 0;
    custom_type_t *r_mirror = 0;

    for (size_t i = ARR_LEN; i < ARR_LEN; i--) {
        assert(*mirror == g_arr[i]);
        assert(*var == g_arr[i]);
        r_mirror = mirror--;
        r_var    = var--;
        assert(*r_mirror == g_arr[i]);
        assert(*r_var == g_arr[i]);
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }

    mirror = var = &g_arr[ARR_LEN - 1];

    for (size_t i = ARR_LEN; i < ARR_LEN; i--) {
        assert(*mirror == g_arr[i]);
        assert(*var == g_arr[i]);
        r_mirror = --mirror;
        r_var    = --var;

        if (i > 0) {
            assert(*mirror == g_arr[i - 1]);
            assert(*var == g_arr[i - 1]);
        }
        assert_match(var, mirror);
        assert(r_mirror == r_var);
    }
}

constexpr vsize_t len = 10;
typedef struct student_s {
    vuint64_t id;
    char name[10];
} student_t;

template <typename SubjectType>
void
test_ptr_arithmetic(void)
{
    SubjectType students[len] = {};
    vsync::atomic<SubjectType *> var(&students[0]);
    std::atomic<SubjectType *> mirror(&students[0]);

    constexpr ptrdiff_t offset = 3;
    var.fetch_add(offset);
    mirror.fetch_add(offset);
    assert(var == mirror);
    assert(var == &students[offset]);

    var.fetch_sub(offset);
    mirror.fetch_sub(offset);
    assert(var == mirror);
    assert(var == &students[0]);

    var++;
    mirror++;
    assert(var == mirror);
    assert(var == &students[1]);

    ++var;
    ++mirror;
    assert(var == mirror);
    assert(var == &students[2]);

    var--;
    mirror--;
    assert(var == mirror);
    assert(var == &students[1]);

    --var;
    --mirror;
    assert(var == mirror);
    assert(var == &students[0]);
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
    test_INC_overload();
    test_DEC_overload();
    test_ptr_arithmetic<student_t>();
    test_ptr_arithmetic<char>();
    test_ptr_arithmetic<vuint16_t>();
    test_ptr_arithmetic<vuint64_t>();
    return 0;
}
