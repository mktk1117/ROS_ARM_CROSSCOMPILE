#! /bin/bash
git clone	https://github.com/enthought/bzip2-1.0.6.git
cd bzip2-1.0.6
make install CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar CFLAGS=fPIC PREFIX=../arm-linux
