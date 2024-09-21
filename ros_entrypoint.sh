#!/bin/bash
set -e

# Setup ROS 2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash"

# Additionally, source the workspace
if [ -f "/root/ros2_ws/install/setup.bash" ]; then
    source "/root/ros2_ws/install/setup.bash"
fi

# Execute the passed command
exec "$@"