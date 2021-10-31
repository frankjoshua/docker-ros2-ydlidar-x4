# ROS2 X4 Lidar driver in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros2-ydlidar-x4)](https://hub.docker.com/r/frankjoshua/ros2-ydlidar-x4) [![CI](https://github.com/frankjoshua/docker-ros2-ydlidar-x4/workflows/CI/badge.svg)](https://github.com/frankjoshua/docker-ros2-ydlidar-x4/actions)

## Description

Runs a ros2 YDLidar X4 laser in a Docker container. Probably need --network="host" because ROS uses ephemeral ports and --privileged for serial access.

## Example

```
docker run -it \
    --network="host" \
    --privileged \
    frankjoshua/ros2-ydlidar-x4
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros2-ydlidar-x4 -l
```

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
