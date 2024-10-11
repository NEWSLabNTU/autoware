#!/usr/bin/env bash
source /home/stust/awf_stust/install/setup.bash
source /home/stust/turing_init/ros2_ws/install/setup.bash

sudo chmod 777 /dev/ttyACM0
cd /home/stust/awf_stust 
gnome-terminal -x make launch
sleep 40
gnome-terminal -x ros2 topic echo /sensing/imu/imu_data
gnome-terminal -x ros2 topic echo /sensing/gnss/ublox/nav_sat_fix
gnome-terminal -x ros2 topic echo /vehicle/status/velocity_status
gnome-terminal -x ros2 topic echo /vehicle/status/steering_status
