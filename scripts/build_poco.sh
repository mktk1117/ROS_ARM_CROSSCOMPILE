#! /bin/bash
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget https://pocoproject.org/releases/poco-1.8.0.1/poco-1.8.0.1.tar.gz
tar xzvf poco-1.8.0.1.tar.gz
rm poco-1.8.0.1.tar.gz
cp ../config/ARM-Linux-gnueabihf poco-1.8.0.1/build/config/
cd poco-1.8.0.1
./configure --config=ARM-Linux-gnueabihf --prefix=../../arm-linux --no-samples --no-tests
make
make install
cd ../../
