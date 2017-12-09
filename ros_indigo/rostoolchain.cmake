#File rostoolchain.cmake
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
set(CROSS_ROOT /home/takahiro/git/ROS_ARM_CROSSCOMPILE)
#set(CROSS_ROOT /home/takahiro/cross_compile)
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
# set(LD_LIBRARY_PATH ${CROSS_ROOT} ${CROSS_ROOT}/arm-linux/lib ${COMPILER_ROOT}/lib ${CROSS_ROOT}/boost_1_55_0/boost)

#set(CMAKE_PREFIX_PATH ${CROSS_ROOT}/build/console_bridge ${CATKIN_WS_ROOT}/devel/catkin/share/catkin/cmake ${CATKIN_WS_ROOT}/devel/cmake_modules/share/cmake_modules/cmake ${CATKIN_WS_ROOT}/devel ${COMPILER_ROOT} ${CROSS_ROOT}/arm-linux)
#set(CMAKE_PREFIX_PATH ${CROSS_ROOT}/build/console_bridge ${CATKIN_WS_ROOT}/devel/catkin/share/catkin/cmake ${CATKIN_WS_ROOT}/devel/cmake_modules/share/cmake_modules/cmake ${CATKIN_WS_ROOT}/devel ${COMPILER_ROOT} ${CROSS_ROOT}/arm-linux)
#set(CMAKE_PREFIX_PATH ${CATKIN_WS_ROOT}/devel ${COMPILER_ROOT} ${CROSS_ROOT}/arm-linux ${CROSS_ROOT}/build/console_bridge/build)
set(CMAKE_PREFIX_PATH ${CATKIN_WS_ROOT}/devel ${COMPILER_ROOT} ${CROSS_ROOT}/arm-linux)
set(CMAKE_LIBRARY_PATH ${COMPILER_ROOT}/lib)
#MESSAGE(STATUS ${CMAKE_PREFIX_PATH})

#set(BOOST_ROOT ${CROSS_ROOT}/arm-linux)
#set(BOOST_INCLUDEDIR ${CROSS_ROOT}/arm-linux/include/boost)

#set(BOOST_ROOT ${CROSS_ROOT}/build/boost_1_55_0)
#set(OpenCV_DIR ${CROSS_ROOT}/opencv-2.4.9/build)
#set(OpenCV_INCLUDE_DIR ${CROSS_ROOT}/opencv-2.4.9/build/include)

set(CATKIN_ENABLE_TESTING false)
add_definitions(-DTIXML_USE_STL)

#set(cpp_common_DIR ${CATKIN_WS_ROOT}/devel/cpp_common/share/cpp_common/cmake)
# set(rospack_DIR ${CATKIN_WS_ROOT}/devel/rospack/share/rospack/cmake)
# set(roscpp_traits_DIR ${CATKIN_WS_ROOT}/devel/roscpp_traits/share/roscpp_traits/cmake)
# set(catkin_DIR ${CATKIN_WS_ROOT}/devel/catkin/share/catkin/cmake)
# set(roscpp_serialization_DIR ${CATKIN_WS_ROOT}/devel/roscpp_serialization/share/roscpp_serialization/cmake)
# set(message_generation_DIR ${CATKIN_WS_ROOT}/devel/message_generation/share/message_generation/cmake)
# set(genmsg_DIR ${CATKIN_WS_ROOT}/devel/genmsg/share/genmsg/cmake)
# set(roslz4_DIR ${CATKIN_WS_ROOT}/devel/roslz4/share/roslz4/cmake)

# set(PYTHONPATH ${CATKIN_WS_ROOT}/install/genmsg/lib/pkgconfig)
# set(PYTHON_PATH ${CATKIN_WS_ROOT}/install/genmsg/lib/pkgconfig)
# set(EMPY_PATH ${CATKIN_WS_ROOT}/install/genmsg/lib/pkgconfig)

