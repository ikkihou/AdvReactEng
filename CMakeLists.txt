# configures required and project version/name
if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    add_compile_options(-fPIC)
    link_directories("usr/lib/x86_64-linux-gnu")
    MESSAGE(STATUS "current platform: Linux ")
    SET(CMAKE_C_COMPILER /usr/bin/clang-13)
    SET(CMAKE_CXX_COMPILER /usr/bin/clang++-13)


elseif(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    MESSAGE(STATUS "current platform: Windows")
endif()

cmake_minimum_required(VERSION 3.8) 



project("Great_Assignment")


set(CMAKE_CXX_STANDARD 17) # switch to c++17
set(CMAKE_CXX_STANDARD_REQUIRED True) # prevent fall back behaviour
# modify flat to -std=c++17 rather than -std=gnu++17
set(CMAKE_CXX_EXTENSIONS OFF) 
set(CMAKE_BUILD_TYPE Debug)

 include(FetchContent)
 FetchContent_Declare(
   googletest
   URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
 )
 # For Windows: Prevent overriding the parent project's compiler/linker settings
 set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
 FetchContent_MakeAvailable(googletest)

set(CMAKE_PROJECT_INCLUDE "${CMAKE_SOURCE_DIR}/include")
set(PROJECT_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/include")

include_directories("${PROJECT_INCLUDE_DIR}")
add_subdirectory("src")
add_subdirectory("test")

