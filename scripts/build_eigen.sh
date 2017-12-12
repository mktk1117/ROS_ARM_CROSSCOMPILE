#! /bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget http://bitbucket.org/eigen/eigen/get/3.2.8.tar.bz2
tar xvhf 3.2.8.tar.bz2 && mv eigen-eigen-07105f7124f9 eigen-3.2.8
cd eigen-3.2.8
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${DIR}/arm-linux -DCMAKE_TOOLCHAIN_FILE=${DIR}/arm-toolchain.cmake ..
make
make install
cd ${DIR}
