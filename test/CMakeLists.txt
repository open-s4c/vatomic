target_compile_definitions(vsync INTERFACE _GNU_SOURCE)
include_directories(include)

add_subdirectory(atomics_basic)
add_subdirectory(atomics_cxx)
add_subdirectory(atomics_gen)
#add_subdirectory(atomics)
