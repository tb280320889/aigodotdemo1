extends RigidBody3D

func _ready():
	# Apply initial impulse to make the ball move
	apply_central_impulse(Vector3(0, 5, 0))
	
func _physics_process(delta):
	# Add some bouncing effect by reducing velocity over time
	linear_velocity *= 0.99
