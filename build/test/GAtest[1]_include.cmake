if(EXISTS "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/test/GAtest[1]_tests.cmake")
  include("D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/test/GAtest[1]_tests.cmake")
else()
  add_test(GAtest_NOT_BUILT GAtest_NOT_BUILT)
endif()
