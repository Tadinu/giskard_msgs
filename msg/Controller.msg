# definitions of possible values to use as type
uint8 UNDEFINED=0
uint8 JOINT=1
uint8 TRANSFORM_6D=2

# use of the above constants to indicate the type of controller
uint8 type

# Name of the link that is at the start of the controlled kinematic chain
string root_link

# Name of the link that is at the end of the controlled kinematic chain
string tip_link 

# Proportional gain used by the controller
float64 p_gain

# Weight assigned to the controller within the cost-function solved in each cycle
float64 weight

# Active/deactive thresholding of error used in the control law
bool enable_error_threshold

# Actual thresholding value used to limit the instantaneous error in the control law
float64 threshold_value

# controller goal, interpretation depends on value in type field
# JOINT: ignores this field
# TRANSFORM_6D: desired pose of tip_link relative to root_link
geometry_msgs/PoseStamped goal_pose

# controller goal, interpretation depends on value in type field
# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link
# TRANSFORM_6D: ignores this field
sensor_msgs/JointState goal_state
