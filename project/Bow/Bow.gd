extends RigidBody2D


func _process(_delta):
	if Input.is_action_pressed("aim_higher"):
		rotation_degrees = clamp(rotation_degrees - 1, -90, 0)
		print(-rotation_degrees)
	elif Input.is_action_pressed("aim_lower"):
		rotation_degrees = clamp(rotation_degrees + 1, -90, 0)
		print(-rotation_degrees)
