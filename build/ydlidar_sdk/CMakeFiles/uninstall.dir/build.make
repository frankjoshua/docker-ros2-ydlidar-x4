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

# Utility rule file for uninstall.

# Include the progress variables for this target.
include CMakeFiles/uninstall.dir/progress.make

CMakeFiles/uninstall:
	/usr/bin/cmake -P /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/cmake_uninstall.cmake

uninstall: CMakeFiles/uninstall
uninstall: CMakeFiles/uninstall.dir/build.make

.PHONY : uninstall

# Rule to build all files generated by this target.
CMakeFiles/uninstall.dir/build: uninstall

.PHONY : CMakeFiles/uninstall.dir/build

CMakeFiles/uninstall.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uninstall.dir/clean

CMakeFiles/uninstall.dir/depend:
	cd /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK /workspaces/docker-ros2-ydlidar-x4/YDLidar-SDK /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk /workspaces/docker-ros2-ydlidar-x4/build/ydlidar_sdk/CMakeFiles/uninstall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uninstall.dir/depend

