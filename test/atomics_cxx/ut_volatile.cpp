/*
 * Copyright (C) Huawei Technologies Co., Ltd. . All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <atomic>
#include <vsync/atomic.hpp>

int
main(void)
{
    volatile std::atomic<vuint32_t> a;
    volatile vsync::atomic<vuint32_t> b;

    a++;
    b++;

    return 0;
}
