#! /bin/bash
echo "Installing boost 1.55"
DIR=`pwd`
echo "The present working directory is `pwd`"
export C_INCLUDE_PATH=${DIR}/arm-linux/include/python2.7
export CPLUS_INCLUDE_PATH=${DIR}/arm-linux/include/python2.7
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget -O boost_1_55_0.tar.gz http://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz/download
tar xzvf boost_1_55_0.tar.gz
rm boost_1_55_0.tar.gz
cd boost_1_55_0
./bootstrap.sh
echo "using gcc
    : arm
    : arm-linux-gnueabihf-g++
    : <cxxflags>-std=gnu++0x
    ; " >> tools/build/v2/user-config.jam
echo "using python
    : 2.7
    : ${DIR}/arm-linux/bin/python 
    : ${DIR}/arm-linux/include/python2.7
    : ${DIR}/arm-linux/lib
    ; " >> tools/build/v2/user-config.jam
./b2 install toolset=gcc-arm --prefix=${DIR}/arm-linux
#./b2 install toolset=gcc-arm --with-python --prefix=${DIR}/arm-linux
cd ${DIR}
