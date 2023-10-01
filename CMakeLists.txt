cmake_minimum_required(VERSION 3.5)
project(giskard_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)

find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(actionlib_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(trajectory_msgs REQUIRED)
find_package(shape_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  msg/CollisionEntry.msg
  msg/Constraint.msg
  msg/WorldBody.msg
  msg/MoveCmd.msg
  srv/UpdateWorld.srv
  srv/DyeGroup.srv
  srv/GetGroupInfo.srv
  srv/GetGroupNames.srv
  srv/RegisterGroup.srv
  action/Move.action
  DEPENDENCIES
  std_msgs
  geometry_msgs
  actionlib_msgs
  sensor_msgs
  trajectory_msgs
  shape_msgs
)

ament_package()
