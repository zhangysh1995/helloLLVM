# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhangysh1995/CLionProjects/CasperCpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangysh1995/CLionProjects/CasperCpp

# Include any dependencies generated for this target.
include fcp/CMakeFiles/LLVMPassCGT.dir/depend.make

# Include the progress variables for this target.
include fcp/CMakeFiles/LLVMPassCGT.dir/progress.make

# Include the compile flags for this target's objects.
include fcp/CMakeFiles/LLVMPassCGT.dir/flags.make

fcp/CMakeFiles/LLVMPassCGT.dir/cgt.cpp.o: fcp/CMakeFiles/LLVMPassCGT.dir/flags.make
fcp/CMakeFiles/LLVMPassCGT.dir/cgt.cpp.o: cgt/cgt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangysh1995/CLionProjects/CasperCpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fcp/CMakeFiles/LLVMPassCGT.dir/cgt.cpp.o"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMPassCGT.dir/cgt.cpp.o -c /home/zhangysh1995/CLionProjects/CasperCpp/cgt/cgt.cpp

fcp/CMakeFiles/LLVMPassCGT.dir/cgt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMPassCGT.dir/cgt.cpp.i"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangysh1995/CLionProjects/CasperCpp/cgt/cgt.cpp > CMakeFiles/LLVMPassCGT.dir/cgt.cpp.i

fcp/CMakeFiles/LLVMPassCGT.dir/cgt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMPassCGT.dir/cgt.cpp.s"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangysh1995/CLionProjects/CasperCpp/cgt/cgt.cpp -o CMakeFiles/LLVMPassCGT.dir/cgt.cpp.s

# Object files for target LLVMPassCGT
LLVMPassCGT_OBJECTS = \
"CMakeFiles/LLVMPassCGT.dir/cgt.cpp.o"

# External object files for target LLVMPassCGT
LLVMPassCGT_EXTERNAL_OBJECTS =

fcp/libLLVMPassCGT.so: fcp/CMakeFiles/LLVMPassCGT.dir/cgt.cpp.o
fcp/libLLVMPassCGT.so: fcp/CMakeFiles/LLVMPassCGT.dir/build.make
fcp/libLLVMPassCGT.so: fcp/CMakeFiles/LLVMPassCGT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangysh1995/CLionProjects/CasperCpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libLLVMPassCGT.so"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMPassCGT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fcp/CMakeFiles/LLVMPassCGT.dir/build: fcp/libLLVMPassCGT.so

.PHONY : fcp/CMakeFiles/LLVMPassCGT.dir/build

fcp/CMakeFiles/LLVMPassCGT.dir/clean:
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPassCGT.dir/cmake_clean.cmake
.PHONY : fcp/CMakeFiles/LLVMPassCGT.dir/clean

fcp/CMakeFiles/LLVMPassCGT.dir/depend:
	cd /home/zhangysh1995/CLionProjects/CasperCpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangysh1995/CLionProjects/CasperCpp /home/zhangysh1995/CLionProjects/CasperCpp/cgt /home/zhangysh1995/CLionProjects/CasperCpp /home/zhangysh1995/CLionProjects/CasperCpp/fcp /home/zhangysh1995/CLionProjects/CasperCpp/fcp/CMakeFiles/LLVMPassCGT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fcp/CMakeFiles/LLVMPassCGT.dir/depend

