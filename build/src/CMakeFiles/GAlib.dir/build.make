# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\environmentConfig\cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\environmentConfig\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build"

# Include any dependencies generated for this target.
include src/CMakeFiles/GAlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/GAlib.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/GAlib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/GAlib.dir/flags.make

src/CMakeFiles/GAlib.dir/RK4.cpp.obj: src/CMakeFiles/GAlib.dir/flags.make
src/CMakeFiles/GAlib.dir/RK4.cpp.obj: src/CMakeFiles/GAlib.dir/includes_CXX.rsp
src/CMakeFiles/GAlib.dir/RK4.cpp.obj: D:/Projects/Visual\ Studio\ Code/vscode_cpp/AdvReactEng/src/RK4.cpp
src/CMakeFiles/GAlib.dir/RK4.cpp.obj: src/CMakeFiles/GAlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/GAlib.dir/RK4.cpp.obj"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/GAlib.dir/RK4.cpp.obj -MF CMakeFiles\GAlib.dir\RK4.cpp.obj.d -o CMakeFiles\GAlib.dir\RK4.cpp.obj -c "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\RK4.cpp"

src/CMakeFiles/GAlib.dir/RK4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GAlib.dir/RK4.cpp.i"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\RK4.cpp" > CMakeFiles\GAlib.dir\RK4.cpp.i

src/CMakeFiles/GAlib.dir/RK4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GAlib.dir/RK4.cpp.s"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\RK4.cpp" -o CMakeFiles\GAlib.dir\RK4.cpp.s

src/CMakeFiles/GAlib.dir/ODE.cpp.obj: src/CMakeFiles/GAlib.dir/flags.make
src/CMakeFiles/GAlib.dir/ODE.cpp.obj: src/CMakeFiles/GAlib.dir/includes_CXX.rsp
src/CMakeFiles/GAlib.dir/ODE.cpp.obj: D:/Projects/Visual\ Studio\ Code/vscode_cpp/AdvReactEng/src/ODE.cpp
src/CMakeFiles/GAlib.dir/ODE.cpp.obj: src/CMakeFiles/GAlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/GAlib.dir/ODE.cpp.obj"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/GAlib.dir/ODE.cpp.obj -MF CMakeFiles\GAlib.dir\ODE.cpp.obj.d -o CMakeFiles\GAlib.dir\ODE.cpp.obj -c "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\ODE.cpp"

src/CMakeFiles/GAlib.dir/ODE.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GAlib.dir/ODE.cpp.i"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\ODE.cpp" > CMakeFiles\GAlib.dir\ODE.cpp.i

src/CMakeFiles/GAlib.dir/ODE.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GAlib.dir/ODE.cpp.s"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\ODE.cpp" -o CMakeFiles\GAlib.dir\ODE.cpp.s

src/CMakeFiles/GAlib.dir/relatives.cpp.obj: src/CMakeFiles/GAlib.dir/flags.make
src/CMakeFiles/GAlib.dir/relatives.cpp.obj: src/CMakeFiles/GAlib.dir/includes_CXX.rsp
src/CMakeFiles/GAlib.dir/relatives.cpp.obj: D:/Projects/Visual\ Studio\ Code/vscode_cpp/AdvReactEng/src/relatives.cpp
src/CMakeFiles/GAlib.dir/relatives.cpp.obj: src/CMakeFiles/GAlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/GAlib.dir/relatives.cpp.obj"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/GAlib.dir/relatives.cpp.obj -MF CMakeFiles\GAlib.dir\relatives.cpp.obj.d -o CMakeFiles\GAlib.dir\relatives.cpp.obj -c "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\relatives.cpp"

src/CMakeFiles/GAlib.dir/relatives.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GAlib.dir/relatives.cpp.i"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\relatives.cpp" > CMakeFiles\GAlib.dir\relatives.cpp.i

src/CMakeFiles/GAlib.dir/relatives.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GAlib.dir/relatives.cpp.s"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && D:\environmentConfig\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src\relatives.cpp" -o CMakeFiles\GAlib.dir\relatives.cpp.s

# Object files for target GAlib
GAlib_OBJECTS = \
"CMakeFiles/GAlib.dir/RK4.cpp.obj" \
"CMakeFiles/GAlib.dir/ODE.cpp.obj" \
"CMakeFiles/GAlib.dir/relatives.cpp.obj"

# External object files for target GAlib
GAlib_EXTERNAL_OBJECTS =

src/libGAlib.a: src/CMakeFiles/GAlib.dir/RK4.cpp.obj
src/libGAlib.a: src/CMakeFiles/GAlib.dir/ODE.cpp.obj
src/libGAlib.a: src/CMakeFiles/GAlib.dir/relatives.cpp.obj
src/libGAlib.a: src/CMakeFiles/GAlib.dir/build.make
src/libGAlib.a: src/CMakeFiles/GAlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libGAlib.a"
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && $(CMAKE_COMMAND) -P CMakeFiles\GAlib.dir\cmake_clean_target.cmake
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\GAlib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/GAlib.dir/build: src/libGAlib.a
.PHONY : src/CMakeFiles/GAlib.dir/build

src/CMakeFiles/GAlib.dir/clean:
	cd /d "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" && $(CMAKE_COMMAND) -P CMakeFiles\GAlib.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/GAlib.dir/clean

src/CMakeFiles/GAlib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng" "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\src" "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build" "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src" "D:\Projects\Visual Studio Code\vscode_cpp\AdvReactEng\build\src\CMakeFiles\GAlib.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/GAlib.dir/depend
