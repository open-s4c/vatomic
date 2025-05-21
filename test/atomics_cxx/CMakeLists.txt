# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT
project(vatomic_cpp LANGUAGES CXX)
# ##############################################################################
# compilation with C++
# ##############################################################################

file(GLOB TESTS *.cpp)

foreach(TEST ${TESTS})
    get_filename_component(TEST_NAME ${TEST} NAME_WE)
    add_executable(${TEST_NAME} ${TEST})
    target_link_libraries(${TEST_NAME} vatomic)
    v_add_bin_test(NAME ${TEST_NAME} COMMAND ${TEST_NAME})
endforeach()
