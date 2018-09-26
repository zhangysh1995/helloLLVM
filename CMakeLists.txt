cmake_minimum_required(VERSION 3.12)
#project(Casper)

SET(CMAKE_CXX_FLAGS "-Wall -fno-rtti")
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_ECLIPSE_VERSION 3.12)
find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
add_subdirectory(callsite)
#add_subdirectory(fcp)
