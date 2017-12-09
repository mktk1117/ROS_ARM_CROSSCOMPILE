#! /bin/bash
git clone https://github.com/lz4/lz4
cd lz4
make install CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar CFLAGS=fPIC LZ4DIR=../arm-linux/lib
