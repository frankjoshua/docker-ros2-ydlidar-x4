FROM althack/ros2:foxy-dev 

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
        && git clean -fd \
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