# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/runner/work/otus_homework_5/otus_homework_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/runner/work/otus_homework_5/otus_homework_5

# Include any dependencies generated for this target.
include CMakeFiles/matrix_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/matrix_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/matrix_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_lib.dir/flags.make

CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o: CMakeFiles/matrix_lib.dir/flags.make
CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o: src/version/versionLib.cpp
CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o: CMakeFiles/matrix_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/otus_homework_5/otus_homework_5/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o -MF CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o.d -o CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o -c /home/runner/work/otus_homework_5/otus_homework_5/src/version/versionLib.cpp

CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/otus_homework_5/otus_homework_5/src/version/versionLib.cpp > CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.i

CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/otus_homework_5/otus_homework_5/src/version/versionLib.cpp -o CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.s

# Object files for target matrix_lib
matrix_lib_OBJECTS = \
"CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o"

# External object files for target matrix_lib
matrix_lib_EXTERNAL_OBJECTS =

libmatrix_lib.a: CMakeFiles/matrix_lib.dir/src/version/versionLib.cpp.o
libmatrix_lib.a: CMakeFiles/matrix_lib.dir/build.make
libmatrix_lib.a: CMakeFiles/matrix_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/runner/work/otus_homework_5/otus_homework_5/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmatrix_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_lib.dir/build: libmatrix_lib.a
.PHONY : CMakeFiles/matrix_lib.dir/build

CMakeFiles/matrix_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrix_lib.dir/clean

CMakeFiles/matrix_lib.dir/depend:
	cd /home/runner/work/otus_homework_5/otus_homework_5 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/runner/work/otus_homework_5/otus_homework_5 /home/runner/work/otus_homework_5/otus_homework_5 /home/runner/work/otus_homework_5/otus_homework_5 /home/runner/work/otus_homework_5/otus_homework_5 /home/runner/work/otus_homework_5/otus_homework_5/CMakeFiles/matrix_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_lib.dir/depend

