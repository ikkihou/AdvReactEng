# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-src"
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-build"
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix"
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix/tmp"
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp"
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix/src"
  "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/Projects/Visual Studio Code/vscode_cpp/AdvReactEng/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
