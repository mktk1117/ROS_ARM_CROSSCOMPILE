#! /bin/bash
DIR=`pwd`
echo "The present working directory is `pwd`"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
git clone https://github.com/icebreaker/TinyXML.git
cd TinyXML
wget https://gist.githubusercontent.com/TNick/7960323/raw/3046ecda1d4d54d777c407f43ac357846a192e05/TinyXML-CmakeLists.txt -O CMakeLists.txt
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${DIR}/arm-linux -DCMAKE_TOOLCHAIN_FILE=${DIR}/arm-toolchain.cmake -DCMAKE_CXX_FLAGS=-fPIC ..
make
cp libtinyxml.a ${DIR}/arm-linux/lib/
cp ../tinystr.h ${DIR}/arm-linux/include/
cp ../tinyxml.h ${DIR}/arm-linux/include/

cd ${DIR}
