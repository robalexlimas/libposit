cmake_minimum_required(VERSION 3.10)
project(libposit C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_compile_options(-Wall -Wextra -pedantic)

file(GLOB LIBPOSIT_SOURCES
    src/*.c
)

add_library(posit SHARED ${LIBPOSIT_SOURCES})
target_include_directories(posit PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

set_target_properties(posit PROPERTIES
    VERSION 1.0
    SOVERSION 1
    OUTPUT_NAME "posit"
)

include(GNUInstallDirs)

install(TARGETS posit
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
