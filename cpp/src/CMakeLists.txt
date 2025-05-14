file(GLOB_RECURSE SRC_FILES "*.cpp")

include(GNUInstallDirs)
add_library(${VSYNC_CPP} SHARED ${SRC_FILES})


target_link_libraries(${VSYNC_CPP} vatomic)
