#! /bin/bash
echo "Installing boost 1.55"
mkdir -p build
mkdir -p arm-linux/bin
mkdir -p arm-linux/lib
mkdir -p arm-linux/include
cd build
wget -O boost_1_55_0.tar.gz http://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz/download
tar xzvf boost_1_55_0.tar.gz
rm boost_1_55_0.tar.gz
cd boost_1_55_0
./bootstrap.sh
echo "using gcc : arm : arm-linux-gnueabihf-g++ ;" >> tools/build/v2/user-config.jam
# echo "using python
#     : 2.7
#     : /home/takahiro/cross_compile/Python-2.7.3/_install/bin/python 
#     : /home/takahiro/cross_compile/Python-2.7.3/_install/include/python2.7
#     : /home/takahiro/cross_compile/Python-2.7.3/_install/lib
#     ; " >> tools/build/v2/user-config.jam
echo "using python
    : 2.7
    : ../arm-linux/bin/python 
    : ../arm-linux/include/python2.7
    : ../arm-linux/lib
    ; " >> tools/build/v2/user-config.jam
/b2 toolset=gcc-arm --with-python
cd ../
