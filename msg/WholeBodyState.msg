# only using timestamp for the moment
std_msgs/Header header

# feature values used to make decisions about succeeded actions
duration time_since_start
float64 left_arm_max_vel
float64 right_arm_max_vel
float64 torso_vel

# classification results used to decide whether action succeeded
bool torso_moving
bool left_arm_moving
bool right_arm_moving
bool left_arm_converged
bool right_arm_converged
bool just_started
