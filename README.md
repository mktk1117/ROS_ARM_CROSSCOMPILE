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
source scripts/install_dependencies
```

## Cross Compile ROS
```bash
cd ros_indigo
catkin init
catkin config --merge-devel # this is important, otherwise you may get weird linking errors
catkin config --merge-install
catkin config --install
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=/home/takahiro/cross_compile/ros_catkin_ws/rostoolchain.cmake
touch src/geometry2/tf2/test/CATKIN_IGNORE
touch src/vision_opencv/image_geometry/test/CATKIN_IGNORE
```

