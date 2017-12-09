#! /bin/bash
DIR=`pwd`
DIR_NAME=`basename ${DIR}`
if [ $DIR_NAME == ROS_ARM_CROSSCOMPILE ] ; then
  echo "Build dependencies with gcc arm-linux"
  source scripts/build_bzip2.sh
  source scripts/build_console_bridge.sh
  source scripts/build_lz4.sh
  source scripts/build_poco.sh
  source scripts/build_tinyxml.sh
  source scripts/build_python.sh
  source scripts/build_boost.sh
  source scripts/build_opencv.sh
else
  echo "Run the command from ROS_ARM_CROSSCOMPILE directory"
  echo "Finished with error."
fi
