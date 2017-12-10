#File rostoolchain.cmake
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
set(CMAKE_FIND_ROOT_PATH ${CROSS_ROOT})
set(CATKIN_WS_ROOT ${CROSS_ROOT}/ros_indigo)
set(COMPILER_ROOT /usr/arm-linux-gnueabihf)

# Have to set this one to BOTH, to allow CMake to find rospack
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(PYTHON_EXECUTABLE /usr/bin/python)
set(CMAKE_CROSSCOMPILING true)
set(CMAKE_PREFIX_PATH ${CATKIN_WS_ROOT}/devel ${COMPILER_ROOT} ${CROSS_ROOT}/arm-linux)
set(CATKIN_ENABLE_TESTING false)
add_definitions(-DTIXML_USE_STL)
