FROM frankjoshua/ros2 

# ARG USERNAME=ros
# ARG USER_UID=1000
# ARG USER_GID=$USER_UID

# # Create a non-root user
# RUN groupadd --gid $USER_GID $USERNAME \
#   && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
#   # [Optional] Add sudo support for the non-root user
#   && apt-get update \
#   && apt-get install -y sudo \
#   && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME\
#   && chmod 0440 /etc/sudoers.d/$USERNAME \
#   # Cleanup
#   && rm -rf /var/lib/apt/lists/* \
#   && echo "source /usr/share/bash-completion/completions/git" >> /home/$USERNAME/.bashrc \
#   && echo "if [ -f /opt/ros/${ROS_DISTRO}/setup.bash ]; then source /opt/ros/${ROS_DISTRO}/setup.bash; fi" >> /home/$USERNAME/.bashrc
# ENV DEBIAN_FRONTEND=

# ** [Optional] Uncomment this section to install additional packages. **
#
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get update \
#    && apt-get -y install --no-install-recommends <your-package-list-here> \
#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

SHELL [ "/bin/bash", "-i", "-c" ]
RUN mkdir YDLidar-SDK
COPY YDLidar-SDK/ ./YDLidar-SDK/
RUN cd YDLidar-SDK/build \
        && cmake .. \
        && make \
        && make install

# Set the working directory to /root
WORKDIR /root

# Copy your existing ROS2 workspace into the container
COPY ros2_ws ./ros2_ws/

RUN cd ros2_ws \
    && mkdir src \
    && vcs import src < ros2.repos

# Install all dependencies for the workspace
RUN cd ros2_ws \
   && apt-get update \
    && rosdep install --from-paths src --ignore-src -r -y \
      && rm -rf /var/lib/apt/lists/*

# Build the workspace using colcon
RUN cd ros2_ws \
    && . /opt/ros/$ROS_DISTRO/setup.sh \
    && colcon build --symlink-install

# Copy the entrypoint script into the container
COPY ros_entrypoint.sh /ros_entrypoint.sh

# Ensure the entrypoint script is executable
RUN chmod +x /ros_entrypoint.sh

COPY ydlidar_params.yaml /root/ydlidar_params.yaml

CMD ["/bin/bash", "-i", "-c", "ros2 launch ydlidar_ros2_driver ydlidar_launch.py params_file:=/root/ydlidar_params.yaml"]