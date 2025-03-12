find_program(GHC ghc DOC "Haskell compiler")
find_program(BPL boogie DOC "Boogie installation")

if(GHC)
    if(BPL)
        add_subdirectory(boogie)
    endif()
endif()
