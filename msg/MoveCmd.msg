# the maximum amount of time the trajectory is allowed to take
float32 max_trajectory_length

# Set of controllers that need to converge for this command to finish
giskard_msgs/Controller[] controllers

# Set of special collision states that shall hold during the movement
giskard_msgs/CollisionEntry[] collisions
