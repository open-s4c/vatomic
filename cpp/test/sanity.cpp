/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <iostream>
#include <atomic>
#include <cassert>

#include <vsync/atomic.hpp>


void
assert_match(vsync::atomic<vuint32_t> &v, std::atomic<vuint32_t> &mirror)
{
    vuint32_t r        = v.load();
    vuint32_t mirror_r = mirror.load();
    std::cout << "vsync: " << r << " =? mirror " << mirror_r << std::endl;
    assert(r == mirror_r);
}

void
test(void)
{
    std::atomic<vuint32_t> mirror;
    vsync::atomic<vuint32_t> var;

    vuint32_t v = 5;
    var.store(v);
    mirror.store(v);

    assert_match(var, mirror);

    var    = 10;
    mirror = 10;
    assert_match(var, mirror);

    var = mirror = 1;
    assert_match(var, mirror);

    mirror = var = 10;
    assert_match(var, mirror);

    vuint32_t a = var.exchange(1);
    vuint32_t b = mirror.exchange(1);
    assert(a == b);
    assert_match(var, mirror);

    bool r1 = var.compare_exchange_strong(a, 2);
    bool r2 = mirror.compare_exchange_strong(b, 2);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

    r1 = var.compare_exchange_strong(a, 2);
    r2 = mirror.compare_exchange_strong(b, 2);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);


    r1 = var.compare_exchange_weak(a, 4);
    r2 = mirror.compare_exchange_weak(b, 4);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

    r1 = var.compare_exchange_weak(a, 4);
    r2 = mirror.compare_exchange_weak(b, 4);
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

    a = var.fetch_or(0xfffff);
    b = mirror.fetch_or(0xfffff);
    assert(a == b);
    assert_match(var, mirror);

    a = var.fetch_and(0xf0f0f);
    b = mirror.fetch_and(0xf0f0f);
    assert(a == b);
    assert_match(var, mirror);

    a = var.fetch_xor(0xf000f);
    b = mirror.fetch_xor(0xf000f);
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

    var -= 3;
    mirror -= 3;
    assert_match(var, mirror);


    var |= 0xffffff;
    mirror |= 0xffffff;
    assert_match(var, mirror);

    var &= 0x0fffff;
    mirror &= 0x0fffff;
    assert_match(var, mirror);

    var ^= 0x0fCfff;
    mirror ^= 0x0fCfff;
    assert_match(var, mirror);

    vuint32_t x = mirror;
    vuint32_t y = var;
    assert(x == y);
}

int
main(void)
{
    test();

    return 0;
}
