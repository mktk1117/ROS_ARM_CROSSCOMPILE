#! /bin/bash
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
git clone	https://github.com/enthought/bzip2-1.0.6.git
cd bzip2-1.0.6
make install CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar CFLAGS=-fPIC PREFIX=../../arm-linux
cd ../../
