/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */

#include <vsync/atomic.h>
#include <vsync/atomic/dispatch.h>

#if !defined(VSYNC_EXPECT_DISPATCH_BACKEND)
    #error "VSYNC_EXPECT_DISPATCH_BACKEND not provided"
#elif VSYNC_DISPATCH_BACKEND != VSYNC_EXPECT_DISPATCH_BACKEND
    #error "Unexpected dispatch backend selected"
#endif

static void
exercise(void)
{
    vatomic8_t a8          = {0};
    vatomic16_t a16        = {0};
    vatomic32_t a32        = {0};
    vatomic64_t a64        = {0};
    vatomicsz_t asz        = {0};
    vatomicptr_t ap        = {0};
    const vatomic32_t ca32 = {0};

    vatomic_write(&a8, 1);
    vatomic_write(&a16, 2);
    vatomic_write(&a32, 3);
    vatomic_write(&a64, 4);
    vatomic_write(&asz, 5);
    vatomic_write(&ap, (void *)6);

    (void)vatomic_read(&a8);
    (void)vatomic_read(&a16);
    (void)vatomic_read(&a32);
    (void)vatomic_read(&a64);
    (void)vatomic_read(&asz);
    (void)vatomic_read(&ap);
    (void)vatomic_read(&ca32);

    (void)vatomic_cmpxchg(&a32, 3, 4);
    (void)vatomic_cmpxchg(&a64, 4, 5);
    (void)vatomic_cmpxchg(&ap, (void *)6, (void *)7);

    (void)vatomic_add_get(&a16, 1);
    (void)vatomic_add_get(&a64, 1);
    (void)vatomic_get_add(&asz, 1);
    (void)vatomic_await_eq(&a32, 0);
}

int
main(void)
{
    vatomic32_t x = {0};
    vatomic_init(&x, 1);
    exercise();
    return (int)vatomic_read(&x);
}
