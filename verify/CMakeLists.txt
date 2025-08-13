set(ARMV8_CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(VSYNC_INCLUDE
    "-I$<JOIN:$<TARGET_PROPERTY:vatomic,INTERFACE_INCLUDE_DIRECTORIES>,;-I>")

add_subdirectory(builtin)
add_subdirectory(haskell)