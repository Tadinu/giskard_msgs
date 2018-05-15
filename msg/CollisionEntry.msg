# definitions of possible collision types to use for value
uint8 AVOID_COLLISION=0
uint8 ALLOW_COLLISION=1

# use one of the above constants as collision type
uint8 type

# enforced minimum distance between the closest points on both surfaces
float64 min_dist

# name of body A, i.e. the first body in the described collision
string body_a
# optional: link of the particular link on body A
# note: only works if body A is a multibody with a link with that name
# note: if left empty, the entire body A is selected
string link_a

# name of body B, i.e. the second body in the described collision
string body_b
# optional: link of the particular link on body B
## note: only works if body B is a multibody with a link with that name
# note: if left empty, the entire body B is selected
string link_b
