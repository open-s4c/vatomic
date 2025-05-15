# Copyright (C) Huawei Technologies Co., Ltd. . All rights reserved.
# SPDX-License-Identifier: MIT

set(TYPES u8 u16 u32 u64 sz)
set(TARGETS stdatomic)
foreach(TARGET ${TARGETS})

    set(TMPL ${TARGET}_TY.hpp)
    message("${TARGET} ==> ${TMPL}")
    foreach(TY ${TYPES})
        string(REPLACE TY ${TY} OUT ${TMPL})
        add_custom_target(
            ${OUT}
            COMMAND
                $<TARGET_FILE:tmplr.bin> -DTY=${TY}
                ${CMAKE_CURRENT_SOURCE_DIR}/vatomic.rules
                ${CMAKE_CURRENT_SOURCE_DIR}/${TMPL}.in >
                ${PROJECT_SOURCE_DIR}/include/vsync/cpp/atomic/${OUT})
        add_dependencies(vatomic-generate ${OUT})
    endforeach()
endforeach()
