cmake_minimum_required(VERSION 3.0.0)

project(Server VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt5 COMPONENTS Core Network )

set(SOURCES main.cpp
    serverinstance.cpp
    session.cpp
    player.cpp
    )

add_executable(${PROJECT_NAME} ${SOURCES})

add_dependencies(${PROJECT_NAME} Common)

target_link_libraries(${PROJECT_NAME}
    Qt5::Core
    Qt5::Network
    Common
    )
