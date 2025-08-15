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
    COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_BINARY_DIR}/lists/* ${CMAKE_CURRENT_BINARY_DIR}
    DEPENDS BUILTIN_SCRIPTS
    COMMENT "Copy the batches to the parent folder"
)


set(ARMV8_FLAGS 
        -DVATOMIC_DISABLE_ARM64_LSE
        -DVATOMIC_BUILTINS
        -O2
        -x c
        -fkeep-inline-functions
        -S
        -mno-outline-atomics
)

set(ATOMICS_GROUPS vatomic8 vatomic16 vatomic32 vatomic64 vatomicsz_vatomicptr_fence)

foreach(TARGET ${TARGETS})
    string(TOLOWER "${TARGET}" SUB_DIR)
    set(SUFFIX ${SUB_DIR})
    set(SUB_DIR ${CMAKE_CURRENT_BINARY_DIR}/${SUB_DIR})
    set(ASM_FILE ${SUB_DIR}/atomics.s)

    add_custom_command(
        OUTPUT builtin_${TARGET}
        COMMAND ${${TARGET}_CMAKE_C_COMPILER} ${${TARGET}_FLAGS} "${VSYNC_INCLUDE}" ${CMAKE_SOURCE_DIR}/include/vsync/atomic.h -o ${ASM_FILE}
        COMMAND_EXPAND_LISTS
        DEPENDS vatomic BUILTIN_SCRIPTS
        COMMENT "Generating ${TARGET} builtin atomics"
    )
    
    add_custom_target(build_boogie_builtin_${SUFFIX} DEPENDS builtin_${TARGET})
    foreach(ATM_GRP ${ATOMICS_GROUPS})
        add_custom_target(test_builtin_${SUFFIX}_${ATM_GRP} 
        COMMAND ruby verify_all.rb -a ${SUFFIX} -s ${ATM_GRP}.txt 
        DEPENDS ATOMIC_LIST)
    endforeach()
endforeach()
