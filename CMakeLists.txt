cmake_minimum_required(VERSION 3.0.0)

project(Server VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

add_subdirectory(Common)
add_subdirectory(Server)
add_subdirectory(ServerClient)


