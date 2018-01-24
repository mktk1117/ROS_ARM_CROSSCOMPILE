#! /bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget http://downloads.sourceforge.net/libjpeg-turbo/libjpeg-turbo-1.3.0.tar.gz
tar xzvf libjpeg-turbo-1.3.0.tar.gz
rm libjpeg-turbo-1.3.0.tar.gz
cd libjpeg-turbo-1.3.0
 ./configure --host=arm-linux-gnueabihf CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar STRIP=arm-linux-gnueabihf-strip RANLIB=arm-linux-gnueabihf-ranlib --prefix=${DIR}/arm-linux CFLAGS=-fPIC CXXFLAGS=-fPIC
make
make install
cd ${DIR}
