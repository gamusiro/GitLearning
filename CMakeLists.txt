cmake_minimum_required(VERSION 3.20.0)

set(NAME "Main")
project(${NAME})

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED OFF)
set(CMAKE_CXX_EXTENSIONS OFF)

file(GLOB CODES
    "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
)

add_executable(${NAME} ${CODES})