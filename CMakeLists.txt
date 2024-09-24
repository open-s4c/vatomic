cmake_minimum_required(VERSION 3.16)

project(
    vatomic
    LANGUAGES C
    VERSION 4.0.1
    DESCRIPTION "VSync atomics"
)

include(GNUInstallDirs)
include(cmake/export.cmake)
include(CheckSymbolExists)

add_library(vsync INTERFACE)

target_include_directories(
    vsync INTERFACE "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
                    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>")

install(DIRECTORY include/vsync DESTINATION include)
install(FILES vmm/vmm.cat DESTINATION share/vsync)
install(TARGETS vsync EXPORT ${PROJECT_TARGETS})

# If this is not the top level project, do not enable testing and other targets.
if(NOT CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    return()
endif()

# ##############################################################################
# Important Config must be set
# ##############################################################################
set(ATOMICS_DIR ${PROJECT_SOURCE_DIR})

# ##############################################################################
# Commands
# ##############################################################################
set(CMAKE_FMT_CMD ${PROJECT_SOURCE_DIR}/scripts/cmake-format.sh
                  ${CMAKE_SOURCE_DIR})

set(CMAKE_STYLE_FILE ${PROJECT_SOURCE_DIR}/.cmake-format)

add_custom_target(cmake-format-apply COMMAND env STYLE=${CMAKE_STYLE_FILE}
                                             SILENT=true ${CMAKE_FMT_CMD})

set(CLANG_FMT_CMD ${PROJECT_SOURCE_DIR}/scripts/clang-format.sh
                  ${CMAKE_SOURCE_DIR})

set(CLANG_STYLE_FILE ${PROJECT_SOURCE_DIR}/.clang-format)

add_custom_target(clang-format-apply COMMAND env STYLE=${CLANG_STYLE_FILE}
                                             SILENT=true ${CLANG_FMT_CMD})

add_custom_target(
     sanitize-vsync
     COMMAND ${PROJECT_SOURCE_DIR}/scripts/sanitize.sh
     WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})

add_custom_target(diff-check COMMAND git --no-pager diff --exit-code)

add_dependencies(clang-format-apply sanitize-vsync)

enable_testing()
include(CTest)
include(ProcessorCount)
include(${CMAKE_SOURCE_DIR}/cmake/v_add_test.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/check.cmake)
add_subdirectory(template)
add_subdirectory(test)
# add_subdirectory(verify)
add_subdirectory(tmplr)

