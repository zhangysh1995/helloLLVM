cmake_minimum_required(VERSION 3.12)
project(CasperCpp)

SET(CMAKE_CXX_FLAGS "-Wall -fno-rtti")
set(CMAKE_CXX_STANDARD 11)

find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
add_subdirectory(hello)
