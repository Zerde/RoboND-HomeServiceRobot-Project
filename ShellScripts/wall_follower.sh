#!/bin/sh
#src_dir=/home/workspace/catkin_ws/src
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$DIR/../World/zerde_world.world" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo gmapping_demo.launch custom_gmapping_launch_file:=$DIR/../launch/gmapping.launch.xml" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers  view_navigation.launch" &
sleep 5
xterm -e "rosrun wall_follower wall_follower"
