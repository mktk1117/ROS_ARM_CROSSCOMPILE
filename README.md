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
