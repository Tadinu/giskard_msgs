# only using timestamp for the moment
std_msgs/Header header

# feature values used to make decisions about succeeded actions
duration running_time
float64 left_arm_max_vel
float64 right_arm_max_vel
float64 torso_vel
float64 left_arm_error
float64 right_arm_error

# classification results used to decide whether action succeeded
bool motion_started # true, as soon low-level controller has started execution the command
bool motion_old # true, if time passed since start of motion is above threshold
bool torso_moving # true, if torso velocity is above threshold
bool left_arm_moving # true, if velocity of any joint of left arm is above threshold
bool right_arm_moving # true, if velocity of any joint of right arm is above threshold
bool left_arm_converged # true, if error of left arm is below threshold
bool right_arm_converged # true, if error of right arm is below threshold
