# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT
target_compile_definitions(vatomic INTERFACE _GNU_SOURCE)

add_subdirectory(atomics_basic)
add_subdirectory(atomics_cxx)
add_subdirectory(atomics_gen)
add_subdirectory(atomics)
