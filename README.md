# ROS_ARM_CROSSCOMPILE
ROS indigo cross compile for ARM architecture

## Install build dependencies
First. you have to install build dependencies.
Start with cloning this repositiory.
```bash
git clone https://github.com/mktk1117/ROS_ARM_CROSSCOMPILE.git
cd ROS_ARM_CROSSCOMPILE
source scripts/install_dependencies.sh
```

## Cross compile dependencies
ROS depends on some libraries.
You also have to cross compile these libraries.
The script cross compiles for ARM architecture by using arm-linux-gnueabihf-gcc or g++.  
It compiles
- boost1.55
- OpenCV2.4.9
- bzip2-1.0.6.
- lz4
- console_bridge
- Poco1.8.0.1
- python 2.7
- tinyXML

The script file `build_dependencies.sh` will cross compile above libraries into `ROS_ARM_CROSSCOMPILE/arm-linux`.
```bash
cd /your workspace/ROS_ARM_CROSSCOMPILE
source scripts/build_dependencies.sh
```

## Cross Compile ROS
```bash
cd ros_indigo
catkin init
catkin config --merge-devel # this is important, otherwise you may get weird linking errors
catkin config --merge-install
catkin config --install
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release -DCROSS_ROOT=/your ws/ROS_ARM_CROSSCOMPILE -DCMAKE_TOOLCHAIN_FILE=/your ws/ROS_ARM_CROSSCOMPILE/ros_indigo/rostoolchain.cmake
rosinstall_generator ros_comm common_msgs sensor_msgs image_transport vision_opencv tf --rosdistro indigo --deps --wet-only --tar > ros-indigo-wet.rosinstall
wstool init -j8 src ros-indigo-wet.rosinstall
touch src/geometry2/tf2/test/CATKIN_IGNORE  # to avoid error
touch src/vision_opencv/image_geometry/test/CATKIN_IGNORE
touch src/geometry/tf/test/CATKIN_IGNORE
touch src/ros_comm/message_filters/test/CATKIN_IGNORE
catkin build
```

