# A command message for robotic manipulators that exposes a couple
# of alternative ways of specifying commands.

# Cartesian goal for the arm.
# Hote: The header will be used to resolve goal using tf.
geometry_msgs/PoseStamped goal

# A flag to activate processing of this command.
# If this FALSE, the rest of this command will be ignored.
bool process
