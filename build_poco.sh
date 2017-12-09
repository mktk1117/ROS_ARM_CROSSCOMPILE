#! /bin/bash
wget https://pocoproject.org/releases/poco-1.8.0.1/poco-1.8.0.1.tar.gz
tar xzvf poco-1.8.0.1.tar.gz
rm poco-1.8.0.1.tar.gz
cd poco-1.8.0.1
./configure --config=ARM-Linux --prefix=../arm-linux --no-samples --no-tests
cd ../
