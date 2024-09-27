set(VSYNC_INCLUDE
    "-I$<JOIN:$<TARGET_PROPERTY:vsync,INTERFACE_INCLUDE_DIRECTORIES>,;-I>")

# Get the atomics.i file

add_custom_command(
    OUTPUT atomic.i
    COMMAND ${CMAKE_C_COMPILER} ${FLAGS} "${VSYNC_INCLUDE}" -E -include
            vsync/atomic.h - < /dev/null > ${CMAKE_CURRENT_SOURCE_DIR}/atomic.i
    COMMAND_EXPAND_LISTS
    DEPENDS vsync
    COMMENT "Preprocessing vsync/atomic.h")

# Copy everything to the build directory

add_custom_command(
    OUTPUT copyfiles
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/* ./
    COMMAND_EXPAND_LISTS
    DEPENDS atomic.i
    COMMENT "Copying needed files")

add_custom_command(
    OUTPUT compile_parser
    COMMAND ghc Main.hs -o parser
    COMMAND_EXPAND_LISTS
    DEPENDS copyfiles
    COMMENT "Compiling the parser")

add_custom_command(
    OUTPUT parsed
    COMMAND ./parser
    DEPENDS compile_parser
    COMMENT "parse code")

set(ATOMICS_LIST_FILE "atomics_list.txt")
file(READ ${ATOMICS_LIST_FILE} FILE_CONTENT)
string(REPLACE "\n" ";" ATOMICS ${FILE_CONTENT})

set(ATOMIC_GROUPS RW AWAIT RMW XCHG)
set(RW_FILES "read.bpl write.bpl reads_writes.bpl")
set(AWAIT_FILES "await.bpl awaits.bpl")
set(RMW_FILES "rmw.bpl rmws.bpl")
set(XCHG_FILES "xchg.bpl xchgs.bpl")

foreach(grp ${ATOMIC_GROUPS})
    string(TOLOWER "${grp}" GRP_NAME)
    add_custom_command(
        OUTPUT ${grp}
        COMMAND bash -c "boogie library.bpl ${${grp}_FILES} >${grp}.log"
        DEPENDS parsed
        COMMENT "Run boogie for group ${GRP_NAME}")
endforeach()

foreach(ATOMIC ${ATOMICS})
    add_custom_command(
        OUTPUT ${ATOMIC}
        COMMAND
            bash -c
            "boogie library.bpl read.bpl write.bpl await.bpl rmw.bpl xchg.bpl awaits.bpl rmws.bpl xchgs.bpl reads_writes.bpl /proc:${ATOMIC} >${ATOMIC}.log"
        DEPENDS ${ATOMIC_GROUPS}
        COMMENT "Run boogie for function ${ATOMIC}")
endforeach()

add_custom_target(build_boogie DEPENDS ${ATOMICS})

# Check for parsing/static errors

add_test(NAME parser_test COMMAND ./parser)

# Check compilation of parsed boogie code for all categories

foreach(grp ${ATOMIC_GROUPS})
    string(TOLOWER "${grp}" GRP_NAME)
    add_test(NAME test_${GRP_NAME}_file_compiles
             COMMAND awk "/Error:/ { exit 1 }" ${grp}.log)
endforeach()

# Check verification of conditions from boogie

foreach(ATOMIC ${ATOMICS})
    add_test(
        NAME check_vatomic_${ATOMIC}
        COMMAND
            bash -c
            "grep -i 'Boogie program verifier finished with' ${ATOMIC}.log | awk '{if (\$(NF-1) != \"0\") exit 1}'"
    )
endforeach()
