#! /bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
git clone https://github.com/lz4/lz4
cd lz4
make CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar CFLAGS=-fPIC
cp lib/lib* ${DIR}/arm-linux/lib/
cp lib/*.h ${DIR}/arm-linux/include/
cd ${DIR}
