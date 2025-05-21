# Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
# SPDX-License-Identifier: MIT

set(TYPES u8 u16 u32 u64 sz ptr)
set(TARGETS core)
foreach(TARGET ${TARGETS})
    set(TMPL ${TARGET}_TY.hpp)
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
