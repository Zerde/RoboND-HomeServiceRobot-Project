#!/bin/sh
#src_dir=/home/workspace/catkin_ws/src
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$DIR/../World/zerde_world.world" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$DIR/../World/myMap.yaml" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers  view_navigation.launch" &
