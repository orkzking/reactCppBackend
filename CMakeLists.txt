cmake_minimum_required(VERSION 3.0)

project(CalculatorAPI)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/CMake/")
find_package(restbed REQUIRED)

add_subdirectory(src)
