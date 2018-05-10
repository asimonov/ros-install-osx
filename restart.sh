ROS_DISTRO=${ROS_DISTRO:-lunar}
ROS_CONFIGURATION=${ROS_CONFIGURATION:-desktop_full}
ROS_EXTRA_PACKAGES=${ROS_EXTRA_PACKAGES:-}
ROS_INSTALL_DIR=${ROS_INSTALL_DIR:-/opt/ros/${ROS_DISTRO}}
set -e
export CMAKE_PREFIX_PATH=$(brew --prefix qt5)
export PATH=$(pwd)/shim:$PATH
WS=${ROS_DISTRO}_${ROS_CONFIGURATION}_ws
cd $WS
#catkin build --start-with camera_calibration_parsers
#catkin build --start-with tf2
#catkin build --start-with pcl_ros
catkin build --limit-status-rate 1
