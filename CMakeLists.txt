cmake_minimum_required(VERSION 3.0)
project(libseek LANGUAGES CXX)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")

set(CXX_STANDARD_REQUIRED true)
set(CMAKE_CXX_STANDARD 14)

find_package(Boost 1.58 REQUIRED COMPONENTS program_options system)
find_package(Libusb REQUIRED)
find_package(OpenCV REQUIRED)

add_subdirectory(lib)
add_subdirectory(bin)
