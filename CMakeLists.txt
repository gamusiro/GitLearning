cmake_minimum_required(VERSION 3.20.0)

set(NAME "Main")
project(${NAME})

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED OFF)
set(CMAKE_CXX_EXTENSIONS OFF)

# Windows
if (WIN32)
    # Windows用の設定
    add_definitions(-D_WIN32)
    message(STATUS "Compiling on Windows")
elseif(UNIX)
    # Linux用の設定
    add_definitions(-D__linux__)
    message(STATUS "Compiling on Linux")
endif()

file(GLOB CODES
    "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
)

add_executable(${NAME} ${CODES})