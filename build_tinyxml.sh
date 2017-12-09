#! /bin/bash
git clone https://github.com/icebreaker/TinyXML.git
cd TinyXML
wget https://gist.githubusercontent.com/TNick/7960323/raw/3046ecda1d4d54d777c407f43ac357846a192e05/TinyXML-CmakeLists.txt -O CMakeLists.txt
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=../../arm-linux -DCMAKE_TOOLCHAIN_FILE=../../arm-toolchain.cmake ..
cd ../../
