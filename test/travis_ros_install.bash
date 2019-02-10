#!/bin/bash -xve

#required packages
sudo pip install catkin_pkg
sudo pip install empty
sudo pip install pyyaml
sudp pip install rospkg

#ros install
cd ..
git clone https://github.com/YuichiKoshihara/ros_setup_scripts_Ubuntu16.04_server.git
cd ./ros_setup_scripts_Ubuntu16.04_server
#bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p /home/ubuntu/catkin_ws/src
cd /home/ubuntu/catkin_ws/src
source /opt/ros/kinetic/setup.bash
catkin_init_workspace
cd /home/ubuntu/catkin_ws
catkin_make
