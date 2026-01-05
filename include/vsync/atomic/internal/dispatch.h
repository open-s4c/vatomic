/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2022-2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */

#ifndef VATOMIC_INTERNAL_DISPATCH_H
#define VATOMIC_INTERNAL_DISPATCH_H

#include <vsync/atomic/internal/dispatch_select.h>

#if VSYNC_DISPATCH_BACKEND == VSYNC_DISPATCH_BACKEND_DISABLED
    #error                                                                     \
        "vsync/atomic/dispatch.h requires -std=gnu99 or -std=c11+. Compile "     \
        "without __STRICT_ANSI__, or include typed headers instead of the "      \
        "dispatcher."
#elif VSYNC_DISPATCH_BACKEND == VSYNC_DISPATCH_BACKEND_GNU
    #include <vsync/atomic/internal/dispatch_gnu.h>
#elif VSYNC_DISPATCH_BACKEND == VSYNC_DISPATCH_BACKEND_C11
    #include <vsync/atomic/internal/dispatch_c11.h>
#else
    #error "Invalid VSYNC_DISPATCH_BACKEND selection"
#endif

#endif /* VATOMIC_INTERNAL_DISPATCH_H */
