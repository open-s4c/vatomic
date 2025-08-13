# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT

find_program(CARGO cargo DOC "Rust installation")
find_program(RUBY ruby DOC "Ruby installation")
find_program(BPL boogie DOC "Boogie installation")

if(NOT BPL OR NOT RUBY OR NOT CARGO)
    message("Skipping verification. Some dependencies are missing")
    return()
endif()

set(TARGETS ARMV8)

add_custom_command(
    OUTPUT BUILTIN_SCRIPTS
    COMMAND ${CMAKE_COMMAND} -E copy_directory
            ${CMAKE_CURRENT_SOURCE_DIR}
            ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Copy verification scripts for the builtin atomics"
)

add_custom_command(
    OUTPUT ATOMIC_LIST
    COMMAND ruby gen_atomic_list.rb > atomics_list_full.txt
    DEPENDS BUILTIN_SCRIPTS
    COMMENT "Generate the full list of atomics"
)

set(ARMV8_FLAGS -DVATOMIC_DISABLE_ARM64_LSE)
foreach(TARGET ${TARGETS})
    string(TOLOWER "${TARGET}" SUB_DIR)
    set(SUFFIX ${SUB_DIR})
    set(SUB_DIR ${CMAKE_CURRENT_BINARY_DIR}/${SUB_DIR})
    set(ASM_FILE ${SUB_DIR}/atomics.s)

    set(CFLAGS
        -DVATOMIC_BUILTINS
        -O2
        -x c
        -fkeep-inline-functions
        -S
        -mno-outline-atomics
    )

    add_custom_command(
        OUTPUT builtin_${TARGET}
        COMMAND ${CMAKE_C_COMPILER} ${CFLAGS} "${VSYNC_INCLUDE}" ${CMAKE_SOURCE_DIR}/include/vsync/atomic.h -o ${ASM_FILE}
        COMMAND_EXPAND_LISTS
        DEPENDS vatomic BUILTIN_SCRIPTS
        COMMENT "Generating ${TARGET} builtin atomics"
    )
    
    add_custom_target(build_boogie_${SUFFIX} DEPENDS ATOMIC_LIST builtin_${TARGET})
    add_test(NAME test_builtin_${SUFFIX} COMMAND ruby verify_all.rb -a ${SUFFIX} -s atomics_list_full.txt)
endforeach()
