# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/kunqian/Downloads/CLion/clion-2017.1.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/kunqian/Downloads/CLion/clion-2017.1.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kunqian/Desktop/CLion/TLPI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kunqian/Desktop/CLion/TLPI/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TLPI.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TLPI.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TLPI.dir/flags.make

CMakeFiles/TLPI.dir/example/copy/copy.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/example/copy/copy.cpp.o: ../example/copy/copy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TLPI.dir/example/copy/copy.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/example/copy/copy.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/example/copy/copy.cpp

CMakeFiles/TLPI.dir/example/copy/copy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/example/copy/copy.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/example/copy/copy.cpp > CMakeFiles/TLPI.dir/example/copy/copy.cpp.i

CMakeFiles/TLPI.dir/example/copy/copy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/example/copy/copy.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/example/copy/copy.cpp -o CMakeFiles/TLPI.dir/example/copy/copy.cpp.s

CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.requires

CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.provides: CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.provides

CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.provides.build: CMakeFiles/TLPI.dir/example/copy/copy.cpp.o


CMakeFiles/TLPI.dir/main.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TLPI.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/main.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/main.cpp

CMakeFiles/TLPI.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/main.cpp > CMakeFiles/TLPI.dir/main.cpp.i

CMakeFiles/TLPI.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/main.cpp -o CMakeFiles/TLPI.dir/main.cpp.s

CMakeFiles/TLPI.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/main.cpp.o.requires

CMakeFiles/TLPI.dir/main.cpp.o.provides: CMakeFiles/TLPI.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/main.cpp.o.provides

CMakeFiles/TLPI.dir/main.cpp.o.provides.build: CMakeFiles/TLPI.dir/main.cpp.o


CMakeFiles/TLPI.dir/example/concat/concat.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/example/concat/concat.cpp.o: ../example/concat/concat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TLPI.dir/example/concat/concat.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/example/concat/concat.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/example/concat/concat.cpp

CMakeFiles/TLPI.dir/example/concat/concat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/example/concat/concat.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/example/concat/concat.cpp > CMakeFiles/TLPI.dir/example/concat/concat.cpp.i

CMakeFiles/TLPI.dir/example/concat/concat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/example/concat/concat.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/example/concat/concat.cpp -o CMakeFiles/TLPI.dir/example/concat/concat.cpp.s

CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.requires

CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.provides: CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.provides

CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.provides.build: CMakeFiles/TLPI.dir/example/concat/concat.cpp.o


CMakeFiles/TLPI.dir/example/iov/iov.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/example/iov/iov.cpp.o: ../example/iov/iov.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TLPI.dir/example/iov/iov.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/example/iov/iov.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/example/iov/iov.cpp

CMakeFiles/TLPI.dir/example/iov/iov.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/example/iov/iov.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/example/iov/iov.cpp > CMakeFiles/TLPI.dir/example/iov/iov.cpp.i

CMakeFiles/TLPI.dir/example/iov/iov.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/example/iov/iov.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/example/iov/iov.cpp -o CMakeFiles/TLPI.dir/example/iov/iov.cpp.s

CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.requires

CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.provides: CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.provides

CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.provides.build: CMakeFiles/TLPI.dir/example/iov/iov.cpp.o


CMakeFiles/TLPI.dir/example/environ/environ.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/example/environ/environ.cpp.o: ../example/environ/environ.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TLPI.dir/example/environ/environ.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/example/environ/environ.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/example/environ/environ.cpp

CMakeFiles/TLPI.dir/example/environ/environ.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/example/environ/environ.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/example/environ/environ.cpp > CMakeFiles/TLPI.dir/example/environ/environ.cpp.i

CMakeFiles/TLPI.dir/example/environ/environ.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/example/environ/environ.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/example/environ/environ.cpp -o CMakeFiles/TLPI.dir/example/environ/environ.cpp.s

CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.requires

CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.provides: CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.provides

CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.provides.build: CMakeFiles/TLPI.dir/example/environ/environ.cpp.o


CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o: ../example/setenv/setenv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/example/setenv/setenv.cpp

CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/example/setenv/setenv.cpp > CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.i

CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/example/setenv/setenv.cpp -o CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.s

CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.requires

CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.provides: CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.provides

CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.provides.build: CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o


CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o: CMakeFiles/TLPI.dir/flags.make
CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o: ../example/jmp/jmp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o -c /home/kunqian/Desktop/CLion/TLPI/example/jmp/jmp.cpp

CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kunqian/Desktop/CLion/TLPI/example/jmp/jmp.cpp > CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.i

CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kunqian/Desktop/CLion/TLPI/example/jmp/jmp.cpp -o CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.s

CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.requires:

.PHONY : CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.requires

CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.provides: CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.requires
	$(MAKE) -f CMakeFiles/TLPI.dir/build.make CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.provides.build
.PHONY : CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.provides

CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.provides.build: CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o


# Object files for target TLPI
TLPI_OBJECTS = \
"CMakeFiles/TLPI.dir/example/copy/copy.cpp.o" \
"CMakeFiles/TLPI.dir/main.cpp.o" \
"CMakeFiles/TLPI.dir/example/concat/concat.cpp.o" \
"CMakeFiles/TLPI.dir/example/iov/iov.cpp.o" \
"CMakeFiles/TLPI.dir/example/environ/environ.cpp.o" \
"CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o" \
"CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o"

# External object files for target TLPI
TLPI_EXTERNAL_OBJECTS =

TLPI: CMakeFiles/TLPI.dir/example/copy/copy.cpp.o
TLPI: CMakeFiles/TLPI.dir/main.cpp.o
TLPI: CMakeFiles/TLPI.dir/example/concat/concat.cpp.o
TLPI: CMakeFiles/TLPI.dir/example/iov/iov.cpp.o
TLPI: CMakeFiles/TLPI.dir/example/environ/environ.cpp.o
TLPI: CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o
TLPI: CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o
TLPI: CMakeFiles/TLPI.dir/build.make
TLPI: CMakeFiles/TLPI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable TLPI"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TLPI.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TLPI.dir/build: TLPI

.PHONY : CMakeFiles/TLPI.dir/build

CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/example/copy/copy.cpp.o.requires
CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/main.cpp.o.requires
CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/example/concat/concat.cpp.o.requires
CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/example/iov/iov.cpp.o.requires
CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/example/environ/environ.cpp.o.requires
CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/example/setenv/setenv.cpp.o.requires
CMakeFiles/TLPI.dir/requires: CMakeFiles/TLPI.dir/example/jmp/jmp.cpp.o.requires

.PHONY : CMakeFiles/TLPI.dir/requires

CMakeFiles/TLPI.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TLPI.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TLPI.dir/clean

CMakeFiles/TLPI.dir/depend:
	cd /home/kunqian/Desktop/CLion/TLPI/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kunqian/Desktop/CLion/TLPI /home/kunqian/Desktop/CLion/TLPI /home/kunqian/Desktop/CLion/TLPI/cmake-build-debug /home/kunqian/Desktop/CLion/TLPI/cmake-build-debug /home/kunqian/Desktop/CLion/TLPI/cmake-build-debug/CMakeFiles/TLPI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TLPI.dir/depend

