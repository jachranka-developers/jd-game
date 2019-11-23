cmake_minimum_required(VERSION 3.0.0)

project(Common VERSION 0.1 LANGUAGES CXX)

find_package(Qt5 COMPONENTS Core Network)

set (SOURCES messages.h
    client.cpp)


add_library(Common STATIC ${SOURCES} )

target_include_directories(Common PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(Common
    Qt5::Core
    Qt5::Network)
