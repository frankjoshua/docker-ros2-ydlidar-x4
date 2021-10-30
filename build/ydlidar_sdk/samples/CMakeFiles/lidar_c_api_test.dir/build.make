# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk

# Include any dependencies generated for this target.
include samples/CMakeFiles/lidar_c_api_test.dir/depend.make

# Include the progress variables for this target.
include samples/CMakeFiles/lidar_c_api_test.dir/progress.make

# Include the compile flags for this target's objects.
include samples/CMakeFiles/lidar_c_api_test.dir/flags.make

samples/CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.o: samples/CMakeFiles/lidar_c_api_test.dir/flags.make
samples/CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.o: /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK/samples/lidar_c_api_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object samples/CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.o"
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.o   -c /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK/samples/lidar_c_api_test.c

samples/CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.i"
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK/samples/lidar_c_api_test.c > CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.i

samples/CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.s"
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK/samples/lidar_c_api_test.c -o CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.s

# Object files for target lidar_c_api_test
lidar_c_api_test_OBJECTS = \
"CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.o"

# External object files for target lidar_c_api_test
lidar_c_api_test_EXTERNAL_OBJECTS =

lidar_c_api_test: samples/CMakeFiles/lidar_c_api_test.dir/lidar_c_api_test.c.o
lidar_c_api_test: samples/CMakeFiles/lidar_c_api_test.dir/build.make
lidar_c_api_test: libydlidar_sdk.a
lidar_c_api_test: samples/CMakeFiles/lidar_c_api_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../lidar_c_api_test"
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lidar_c_api_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/CMakeFiles/lidar_c_api_test.dir/build: lidar_c_api_test

.PHONY : samples/CMakeFiles/lidar_c_api_test.dir/build

samples/CMakeFiles/lidar_c_api_test.dir/clean:
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples && $(CMAKE_COMMAND) -P CMakeFiles/lidar_c_api_test.dir/cmake_clean.cmake
.PHONY : samples/CMakeFiles/lidar_c_api_test.dir/clean

samples/CMakeFiles/lidar_c_api_test.dir/depend:
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK/samples /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/samples/CMakeFiles/lidar_c_api_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/CMakeFiles/lidar_c_api_test.dir/depend
