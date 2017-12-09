#!/bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.xz
tar xvf Python-2.7.3.tar.xz
rm Python-2.7.3.tar.xz
cd Python-2.7.3
wget https://gist.githubusercontent.com/bmount/6929380/raw/8ef8e2701e7d5b1b22c5687e93d22f6ef9ca7ec6/Python-2.7.3-xcompile.patch
./configure
make python Parser/pgen
mv python hostpython
mv Parser/pgen Parser/hostpgen
make distclean
patch -p1 < Python-2.7.3-xcompile.patch
CC=arm-linux-gnueabihf-gcc CXX=arm-linux-gnueabihf-g++ AR=arm-linux-gnueabihf-ar RANLIB=arm-linux-gnueabihf-ranlib CFLAGS=-fPIC CXXFLAGS=-fPIC ./configure --host=arm-linux --build=x86_64-linux-gnu --prefix=${DIR}/arm-linux --enable-shared
make HOSTPYTHON=./hostpython HOSTPGEN=./Parser/hostpgen BLDSHARED="arm-linux-gnueabihf-gcc -shared" CROSS_COMPILE=arm-linux-gnueabihf- CROSS_COMPILE_TARGET=yes HOSTARCH=arm-linux BUILDARCH=x86_64-linux-gnu
make install HOSTPYTHON=./hostpython BLDSHARED="arm-linux-gnueabihf-gcc -shared" CROSS_COMPILE=arm-linux-gnueabihf- CROSS_COMPILE_TARGET=yes prefix=${DIR}/arm-linux
cd ${DIR}
