#! /bin/bash
sudo apt-get update
sudo apt-get install gcc-arm-linux-gnueabihf -y
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev -y
sudo apt-get install python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential -y
sudo apt-get install python-empy, python-nose -y
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install python-catkin-tools -y
sudo rosdep init 
rosdep update
