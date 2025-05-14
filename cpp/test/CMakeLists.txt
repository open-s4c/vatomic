file(GLOB_RECURSE TESTS "*.cpp")
include(CTest)
enable_testing()

foreach(TEST_FILE ${TESTS})
    get_filename_component(TEST ${TEST_FILE} NAME_WE)
    set(TEST test_cpp_${TEST})
    add_executable(${TEST} ${TEST_FILE})

    target_link_libraries(${TEST} vatomic)
    add_test(NAME ${TEST} COMMAND ${TEST})
endforeach()
