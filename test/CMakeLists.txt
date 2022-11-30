# GoogleTest requires at least C++11
set(CMAKE_CXX_STANDARD 17)

 enable_testing()

add_executable(GAtest 
            "main_test.cpp"
                )

target_link_libraries(
    GAtest
    GAlib
    gtest_main

)

 include(GoogleTest)
 gtest_discover_tests(GAtest)








