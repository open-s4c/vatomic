# Copyright (C) 2025 Huawei Technologies Co., Ltd.                             #
# SPDX-License-Identifier: MIT                                                 #

include(ExternalProject)
set(OPENS4C_URL "https://github.com/open-s4c")
set(TMPLR_VERSION "1.4")
set(TMPLR_URL "${OPENS4C_URL}/tmplr/archive/refs/tags/v${TMPLR_VERSION}.tar.gz")
set(TMPLR_SHA256
    "ab6b67cd9894afbd8f262a7739598902c873c89007bcddb818afe65b405294ea")

set(LOCAL_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/local")

ExternalProject_Add(
    tmplr-build
    URL ${TMPLR_URL}
    URL_HASH SHA256=${TMPLR_SHA256}
    DOWNLOAD_EXTRACT_TIMESTAMP TRUE # Prevents the CMP0135 warning
    SOURCE_DIR "${CMAKE_BINARY_DIR}/tmplr/"
    BINARY_DIR "${CMAKE_BINARY_DIR}/tmplr/"
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${CMAKE_MAKE_PROGRAM}
    INSTALL_COMMAND ${CMAKE_MAKE_PROGRAM} PREFIX=${LOCAL_INSTALL_PREFIX}
                    install)

set(TMPLR_PROGRAM "${LOCAL_INSTALL_PREFIX}/bin/tmplr")
message(STATUS "TMPLR_PROGRAM located at ${TMPLR_PROGRAM}")

add_custom_target(
    tmplr-check
    COMMAND ${TMPLR_PROGRAM} -V
    COMMENT "Running installed tmplr version check"
    DEPENDS tmplr-build)
