#! /bin/bash
git clone https://github.com/ros/console_bridge.git
cd console_bridge
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=../../arm-linux -DCMAKE_TOOLCHAIN_FILE=../../arm-toolchain.cmake ..
make install
cd ../../
