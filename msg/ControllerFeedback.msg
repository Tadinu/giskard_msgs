# Feedback provided by giskard controllers.

# Header to communicate timestamps, and being compatible with message-filters.
std_msgs/Header header
# Commands issued to motor controllers, expressed with semantics hints.
giskard_msgs/SemanticFloat64[] commands
# Slack values of task functions, expressed with semantics hints.
giskard_msgs/SemanticFloat64[] slacks
