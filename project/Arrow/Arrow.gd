extends RigidBody2D

func prepare_arrow(var degrees):
	#makes sure the arrow is fired in the right orientation, is visible, 
	#has colision, and has gravity before firing
	$ArrowSprite.rotation_degrees = degrees
	gravity_scale = 1
	visible = true
	$ArrowCollision.disabled = false

func shoot_arrow(var power):
	var impulse = Vector2(power, 0).rotated(deg2rad($ArrowSprite.rotation_degrees))
	apply_impulse(Vector2.ZERO, impulse)
