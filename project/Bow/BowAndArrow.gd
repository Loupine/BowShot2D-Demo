extends RigidBody2D


func _process(_delta):
	
	if Input.is_action_pressed("shoot"):
		$Arrow/ArrowSprite.rotation_degrees = $BowSprite.rotation_degrees
		$Arrow.visible = true
		$Arrow.gravity_scale = 4
		$Arrow.apply_impulse(Vector2.ZERO, Vector2(100, 0).rotated(deg2rad($BowSprite.rotation_degrees)))
		$Arrow/CollisionShape2D.disabled = false
	
	elif Input.is_action_pressed("aim_higher"):
		$BowSprite.rotation_degrees -= 1
		print($BowSprite.rotation_degrees)
		
	elif Input.is_action_pressed("aim_lower"):
		$BowSprite.rotation_degrees += 1
		print($BowSprite.rotation_degrees)
	
	$BowSprite.rotation_degrees = clamp($BowSprite.rotation_degrees, -90, 0)
