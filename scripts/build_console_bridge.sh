#! /bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
git clone https://github.com/ros/console_bridge.git
cd console_bridge
git checkout 8c3c62501bf8521dcf53705b497ea982b874c25d
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${DIR}/arm-linux -DCMAKE_TOOLCHAIN_FILE=${DIR}/arm-toolchain.cmake ..
make
make install
cd ${DIR}
