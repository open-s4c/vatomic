/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <atomic>
#include <vsync/atomic.hpp>

int
main(void)
{
    volatile std::atomic<vuint32_t> a;
    volatile vsync::atomic<vuint32_t> b;

    volatile std::atomic<int> x;
    volatile vsync::atomic<int> y;
    a++;
    b++;
    x++;
    y++;

    return 0;
}
