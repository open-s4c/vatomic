# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT

find_program(CARGO cargo DOC "Rust installation")
find_program(RUBY ruby DOC "Ruby installation")
find_program(BPL boogie DOC "Boogie installation")

if(NOT BPL
   OR NOT RUBY
   OR NOT CARGO)
    message("Skipping verification. Some dependencies are missing")
    return()
endif()

set(ARCHS ARMV8 RISCV)

add_custom_command(
    OUTPUT BUILTIN_SCRIPTS
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}
            ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Copy verification scripts for the builtin atomics")

# Permission only needed if cleaner.sh will be used
add_custom_command(
    OUTPUT PERMISSION_SCRIPTS
    COMMAND chmod +x ${CMAKE_CURRENT_BINARY_DIR}/cleaner.sh
    DEPENDS BUILTIN_SCRIPTS
    COMMENT "Give script permissions")

add_custom_command(
    OUTPUT ATOMIC_LIST
    COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_BINARY_DIR}/lists/*
            ${CMAKE_CURRENT_BINARY_DIR}
    DEPENDS BUILTIN_SCRIPTS
    COMMENT "Copy the batches to the parent folder")

set(BUILTIN_FLAGS -DVATOMIC_DISABLE_ARM64_LSE -DVATOMIC_BUILTINS)

set(ARMV8_FLAGS -O2 -x c -fkeep-inline-functions -S -mno-outline-atomics)

set(LLSC_FLAGS -DVATOMIC_DISABLE_ARM64_LSE)

set(RISCV_FLAGS -O2 -x c -fkeep-inline-functions -S)

set(RISCV_TARGETS BUILTIN)
set(ARMV8_TARGETS LLSC BUILTIN)

set(ATOMIC_CORE_GROUPS vatomic8 vatomic16 vatomic32 vatomic64 vatomicsz)
set(ATOMIC_AWAIT_GROUPS vatomic32 vatomic64)
set(ATOMIC_PTR_GROUPS vatomicptr)
set(LISTS CORE AWAIT PTR)
set(ORDERINGS acq rel rlx "")

foreach(ARCH ${ARCHS})
    string(TOLOWER "${ARCH}" SUB_DIR)
    set(SUFFIX ${SUB_DIR})
    set(SUB_DIR ${CMAKE_CURRENT_BINARY_DIR}/${SUB_DIR})
    set(ASM_FILE ${SUB_DIR}/atomics.s)

    # Build targets
    foreach(TARGET ${${ARCH}_TARGETS})
        string(TOLOWER "${SUFFIX}_${TARGET}" COMPOSED_TARGET)

        if(${ARCH} STREQUAL "ARMV8")
            add_custom_command(
                OUTPUT GEN_${COMPOSED_TARGET}
                COMMAND
                    ${${ARCH}_CMAKE_C_COMPILER} ${${TARGET}_FLAGS}
                    ${${ARCH}_FLAGS} "${VSYNC_INCLUDE}"
                    ${CMAKE_SOURCE_DIR}/include/vsync/atomic.h -o ${ASM_FILE} &&
                    ${CMAKE_CURRENT_BINARY_DIR}/cleaner.sh ${ASM_FILE}
                COMMAND_EXPAND_LISTS
                DEPENDS vatomic BUILTIN_SCRIPTS PERMISSION_SCRIPTS
                COMMENT
                    "Generating ${COMPOSED_TARGET} builtin atomics (with cleaner)"
            )
        else()
            add_custom_command(
                OUTPUT GEN_${COMPOSED_TARGET}
                COMMAND
                    ${${ARCH}_CMAKE_C_COMPILER} ${${TARGET}_FLAGS}
                    ${${ARCH}_FLAGS} "${VSYNC_INCLUDE}"
                    ${CMAKE_SOURCE_DIR}/include/vsync/atomic.h -o ${ASM_FILE}
                COMMAND_EXPAND_LISTS
                DEPENDS vatomic BUILTIN_SCRIPTS
                COMMENT "Generating ${COMPOSED_TARGET} builtin atomics")
        endif()

        add_custom_target(build_boogie_${COMPOSED_TARGET}
                          DEPENDS GEN_${COMPOSED_TARGET} ATOMIC_LIST)
    endforeach()

    # Tests Fences
    foreach(ORD ${ORDERINGS})
        set(ATM vatomic_fence_${ORD})
        add_test(NAME check_${SUFFIX}_${ATM}
                 COMMAND ruby verify_all.rb -a ${SUFFIX} -f ${ATM} -o
                         out_${ATM})
        set_tests_properties(check_${SUFFIX}_${ATM}
                             PROPERTIES LABELS ${SUFFIX}_vatomic_fence)
    endforeach()

    # Core, Await, ptr
    foreach(LIST ${LISTS})
        foreach(ATM_GRP ${ATOMIC_${LIST}_GROUPS})
            string(TOLOWER "lists/vatomic_${LIST}.txt" LIST_FILE)
            file(STRINGS ${LIST_FILE} ATM_LIST)
            foreach(ATM ${ATM_LIST})
                set(ATM_PREF ${ATM_GRP}_${ATM})
                add_test(NAME check_${SUFFIX}_${ATM_PREF}
                         COMMAND ruby verify_all.rb -a ${SUFFIX} -f ${ATM_PREF}
                                 -o out_${ATM_PREF})

                set_tests_properties(check_${SUFFIX}_${ATM_PREF}
                                     PROPERTIES LABELS ${SUFFIX}_${ATM_GRP})
            endforeach()
        endforeach()
    endforeach()

endforeach()
