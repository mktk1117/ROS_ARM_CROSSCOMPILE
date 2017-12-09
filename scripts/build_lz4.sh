#! /bin/bash
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
git clone https://github.com/lz4/lz4
cd lz4
make CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar CFLAGS=-fPIC
cp lib/lib* ../../arm-linux/lib/
cp lib/*.h ../../arm-linux/include/
cd ../../
