#!/bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.9/opencv-2.4.9.zip
unzip opencv-2.4.9.zip
rm opencv-2.4.9.zip
cd opencv-2.4.9
cd platforms/linux/
rm arm-gnueabi.toolchain.cmake
wget https://raw.githubusercontent.com/alalek/opencv/fddc9c583998ac4a0c4981f2bcc34cd7be0b9911/platforms/linux/gnu.toolchain.cmake
wget https://raw.githubusercontent.com/alalek/opencv/fddc9c583998ac4a0c4981f2bcc34cd7be0b9911/platforms/linux/arm-gnueabi.toolchain.cmake
wget https://raw.githubusercontent.com/alalek/opencv/fddc9c583998ac4a0c4981f2bcc34cd7be0b9911/platforms/linux/arm.toolchain.cmake
cd ../../
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-gnueabi.toolchain.cmake -DCMAKE_INSTALL_PREFIX=${DIR}/arm-linux ..
make
make install
cd ${DIR}
