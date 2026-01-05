# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT

add_executable(dispatch_backend_probe_gnu dispatch_backend_probe.c)
target_link_libraries(dispatch_backend_probe_gnu vatomic pthread)
target_compile_definitions(dispatch_backend_probe_gnu PRIVATE
    VSYNC_EXPECT_DISPATCH_BACKEND=VSYNC_DISPATCH_BACKEND_GNU)
set_target_properties(dispatch_backend_probe_gnu PROPERTIES
    C_STANDARD 99
    C_STANDARD_REQUIRED ON
    C_EXTENSIONS ON)
v_add_bin_test(NAME dispatch_backend_probe_gnu COMMAND dispatch_backend_probe_gnu)

add_executable(dispatch_backend_probe_c11 dispatch_backend_probe.c)
target_link_libraries(dispatch_backend_probe_c11 vatomic pthread)
target_compile_definitions(dispatch_backend_probe_c11 PRIVATE
    VSYNC_EXPECT_DISPATCH_BACKEND=VSYNC_DISPATCH_BACKEND_C11)
set_target_properties(dispatch_backend_probe_c11 PROPERTIES
    C_STANDARD 11
    C_STANDARD_REQUIRED ON
    C_EXTENSIONS OFF)
v_add_bin_test(NAME dispatch_backend_probe_c11 COMMAND dispatch_backend_probe_c11)
