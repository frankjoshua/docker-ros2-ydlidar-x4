FROM ros:foxy-ros-base 

ARG USERNAME=ros
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create a non-root user
RUN groupadd --gid $USER_GID $USERNAME \
  && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
  # [Optional] Add sudo support for the non-root user
  && apt-get update \
  && apt-get install -y sudo \
  && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME\
  && chmod 0440 /etc/sudoers.d/$USERNAME \
  # Cleanup
  && rm -rf /var/lib/apt/lists/* \
  && echo "source /usr/share/bash-completion/completions/git" >> /home/$USERNAME/.bashrc \
  && echo "if [ -f /opt/ros/${ROS_DISTRO}/setup.bash ]; then source /opt/ros/${ROS_DISTRO}/setup.bash; fi" >> /home/$USERNAME/.bashrc
ENV DEBIAN_FRONTEND=

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
ARG WORKSPACE=/home/ros
USER ros
SHELL [ "/bin/bash", "-i", "-c" ]
WORKDIR ${WORKSPACE}
COPY src/ src/
RUN mkdir YDLidar-SDK
COPY YDLidar-SDK/ ./YDLidar-SDK/
RUN cd YDLidar-SDK/build \
        && sudo cmake .. \
        && sudo make \
        && sudo make install
RUN colcon build --symlink-install

# Set up auto-source of workspace for ros user
ENV DEBIAN_FRONTEND=dialog
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc

USER ros
ENTRYPOINT [ "/bin/bash", "-i", "-c" ]
CMD ["ros2 launch ydlidar_ros2_driver ydlidar_launch.py"]