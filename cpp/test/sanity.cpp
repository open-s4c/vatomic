/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <iostream>
#include <atomic>
#include <cassert>

#include "../src/atomic.hpp"


void
assert_match(vsync::atomic<int*> &v, std::atomic<int*> &mirror)
{
    int* r        = v.load();
    int* mirror_r = mirror.load();
    std::cout << "vsync: " << r << " =? mirror " << mirror_r << std::endl;
    assert(r == mirror_r);
}

void
test(void)
{
    std::atomic<int*> mirror;
    vsync::atomic<int*> var;

    int x;

    int* v = &x;
    var.store(v);
    mirror.store(v);

    assert_match(var, mirror);

    var    = v;
    mirror = v;
    assert_match(var, mirror);

    var = mirror = v;
    assert_match(var, mirror);

    mirror = var = v;
    assert_match(var, mirror);

    int* a = var.exchange(v);
    int* b = mirror.exchange(v);
    assert(a == b);
    assert_match(var, mirror);

    bool r1 = var.compare_exchange_strong(a, v);
    bool r2 = mirror.compare_exchange_strong(b, v);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

    r1 = var.compare_exchange_strong(a, v);
    r2 = mirror.compare_exchange_strong(b, v);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);


    r1 = var.compare_exchange_weak(a, v);
    r2 = mirror.compare_exchange_weak(b, v);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

    r1 = var.compare_exchange_weak(a, v);
    r2 = mirror.compare_exchange_weak(b, v);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

    a = var.fetch_add(10);
    b = mirror.fetch_add(10);
    assert(a == b);
    assert_match(var, mirror);

    a = var.fetch_sub(10);
    b = mirror.fetch_sub(10);
    assert(a == b);
    assert_match(var, mirror);

    a = var++;
    b = mirror++;
    assert(a == b);
    assert_match(var, mirror);

    a = ++var;
    b = ++mirror;
    assert(a == b);
    assert_match(var, mirror);

    a = var--;
    b = mirror--;
    assert(a == b);
    assert_match(var, mirror);

    a = --var;
    b = --mirror;
    assert(a == b);
    assert_match(var, mirror);

    var += 3;
    mirror += 3;
    assert_match(var, mirror);
}

int
main(void)
{
    test();

    return 0;
}
