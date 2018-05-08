# Representation of a single body into the world 

# Possible constants to fill into the type field
uint8 UNDEFINED=0
uint8 PRIMITIVE_BODY=1
uint8 MESH_BODY=2
uint8 URDF_BODY=3

# The type of body that is represented
uint8 type

# The name with which the body shall be addressed in the world
# Note: needs to be unique. If the name is already taken, an error will be returned
string name

# Pose of the body in the world. TF will be used to resolve the header information.
geometry_msgs/PoseStamped pose

# Flag that specifies whether this body is rigidly attached to an existing link
bool rigidly_attached
# Only used if rigidly_attached==True, otherwise ignored.
# Name of the body that holds the link to which this body shall be connected.
string parent_body_name
# Name of the link to which this body shall be connected.
string parent_link_name

# Only used if type==PRIMITIVE_BODY, otherwise ignored.
shape_msgs/SolidPrimitive shape

# Only used if type==MESH_BODY, otherwise ignored. 
# Needs to be a ROS resource description, like:
# 'package://my_pkg/meshes/some_mesh.dae'
string mesh

# Only used if type==URDF_BODY, otherwise ignored.
# Needs to comply with the URDF definition from here:
# http://wiki.ros.org/urdf/XML
string urdf
# Only used if type==URDF_BODY, otherwise ignored.
# Optional, can be left empty.
# If not empty, this will interpreted as a ROS topic over which 
# message of type sensor_msgs/JointState are communicated that
# contain the current state of all the movable joints described
# in the urdf.
string joint_state_topic
