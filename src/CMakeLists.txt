# set variables
message(STATUS "CMake project include dir: " ${PROJECT_INCLUDE_DIR})

add_library(
    GAlib STATIC
    "RK4.cpp"
    "ODE.cpp"
    "relatives.cpp"

)

list(APPEND EXTRA_LIBS GAlib)
target_include_directories(GAlib PUBLIC ${CMAKE_PROJECT_INCLUDE})

# print default install path
message(STATUS "Default install prefix path is: " ${CMAKE_INSTALL_PREFIX})
# install all libraries to system
install(TARGETS ${EXTRA_LIBS} DESTINATION lib)
install(DIRECTORY ${PROJECT_INCLUDE_DIR} DESTINATION include)
