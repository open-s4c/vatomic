# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT
set(V_TEST_LABELS "CROSS")

file(GLOB TESTS *test*.c)
foreach(test IN ITEMS ${TESTS})
    get_filename_component(TEST ${test} NAME_WE)
    add_executable(${TEST} ${test})
    target_link_libraries(${TEST} vatomic pthread)
    target_compile_options(${TEST} PRIVATE ${TEST_C_WARN_OPTS})
    v_add_bin_test(NAME ${TEST} COMMAND ${TEST})
endforeach()
