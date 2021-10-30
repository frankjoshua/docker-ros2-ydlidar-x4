
SET( YDLIDAR_SDK_LIBRARIES  ydlidar_sdk;pthread;rt CACHE INTERNAL "YDLIDAR_SDK libraries" FORCE )
SET( YDLIDAR_SDK_INCLUDE_DIRS  /workspaces/docker-ros2-ydlidar-x4/install/ydlidar_sdk/include/src;/workspaces/docker-ros2-ydlidar-x4/install/ydlidar_sdk/include CACHE INTERNAL "YDLIDAR_SDK include directories" FORCE )
SET( YDLIDAR_SDK_LIBRARY_DIRS  CACHE INTERNAL "YDLIDAR_SDK library directories" FORCE )

mark_as_advanced( YDLIDAR_SDK_LIBRARIES )
mark_as_advanced( YDLIDAR_SDK_LIBRARY_DIRS )
mark_as_advanced( YDLIDAR_SDK_INCLUDE_DIRS )


