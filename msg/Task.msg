# definitions of possible values for field 'type'
uint8 INVALID_TYPE=0 # make users set a proper type
uint8 POURING=1 # a pouring task

# the type of the action, use one of the above constants
uint8 type

# objects involved in the action
giskard_msgs/TaskObject[] objects

# for pouring tasks
float64 pour_volume # in cubic-meters
