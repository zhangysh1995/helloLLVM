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
include fcp/CMakeFiles/LLVMPassFCP.dir/depend.make

# Include the progress variables for this target.
include fcp/CMakeFiles/LLVMPassFCP.dir/progress.make

# Include the compile flags for this target's objects.
include fcp/CMakeFiles/LLVMPassFCP.dir/flags.make

fcp/CMakeFiles/LLVMPassFCP.dir/fcp.cpp.o: fcp/CMakeFiles/LLVMPassFCP.dir/flags.make
fcp/CMakeFiles/LLVMPassFCP.dir/fcp.cpp.o: fcp/fcp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangysh1995/CLionProjects/CasperCpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fcp/CMakeFiles/LLVMPassFCP.dir/fcp.cpp.o"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMPassFCP.dir/fcp.cpp.o -c /home/zhangysh1995/CLionProjects/CasperCpp/fcp/fcp.cpp

fcp/CMakeFiles/LLVMPassFCP.dir/fcp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMPassFCP.dir/fcp.cpp.i"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangysh1995/CLionProjects/CasperCpp/fcp/fcp.cpp > CMakeFiles/LLVMPassFCP.dir/fcp.cpp.i

fcp/CMakeFiles/LLVMPassFCP.dir/fcp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMPassFCP.dir/fcp.cpp.s"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangysh1995/CLionProjects/CasperCpp/fcp/fcp.cpp -o CMakeFiles/LLVMPassFCP.dir/fcp.cpp.s

# Object files for target LLVMPassFCP
LLVMPassFCP_OBJECTS = \
"CMakeFiles/LLVMPassFCP.dir/fcp.cpp.o"

# External object files for target LLVMPassFCP
LLVMPassFCP_EXTERNAL_OBJECTS =

fcp/libLLVMPassFCP.so: fcp/CMakeFiles/LLVMPassFCP.dir/fcp.cpp.o
fcp/libLLVMPassFCP.so: fcp/CMakeFiles/LLVMPassFCP.dir/build.make
fcp/libLLVMPassFCP.so: fcp/CMakeFiles/LLVMPassFCP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangysh1995/CLionProjects/CasperCpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libLLVMPassFCP.so"
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMPassFCP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fcp/CMakeFiles/LLVMPassFCP.dir/build: fcp/libLLVMPassFCP.so

.PHONY : fcp/CMakeFiles/LLVMPassFCP.dir/build

fcp/CMakeFiles/LLVMPassFCP.dir/clean:
	cd /home/zhangysh1995/CLionProjects/CasperCpp/fcp && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPassFCP.dir/cmake_clean.cmake
.PHONY : fcp/CMakeFiles/LLVMPassFCP.dir/clean

fcp/CMakeFiles/LLVMPassFCP.dir/depend:
	cd /home/zhangysh1995/CLionProjects/CasperCpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangysh1995/CLionProjects/CasperCpp /home/zhangysh1995/CLionProjects/CasperCpp/fcp /home/zhangysh1995/CLionProjects/CasperCpp /home/zhangysh1995/CLionProjects/CasperCpp/fcp /home/zhangysh1995/CLionProjects/CasperCpp/fcp/CMakeFiles/LLVMPassFCP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fcp/CMakeFiles/LLVMPassFCP.dir/depend
