extends RigidBody2D

var shot = false

func _process(_delta):
	if Input.is_action_pressed("shoot") and not shot:
		prepare_arrow()
		var impulse = Vector2(300, 0).rotated(deg2rad($BowSprite.rotation_degrees))
		$Arrow.apply_impulse(Vector2.ZERO, impulse)
		$BowSprite.set_texture(preload("res://Bow/Bow.png"))
		shot = true
		
	elif Input.is_action_pressed("aim_higher"):
		$BowSprite.rotation_degrees -= 1
		print($BowSprite.rotation_degrees)
		
	elif Input.is_action_pressed("aim_lower"):
		$BowSprite.rotation_degrees += 1
		print($BowSprite.rotation_degrees)
	
	$BowSprite.rotation_degrees = clamp($BowSprite.rotation_degrees, -90, 0)

func prepare_arrow():
	#makes sure the arrow is fired in the right orientation, is visible, 
	#has colision, and has gravity before firing
	$Arrow/ArrowSprite.rotation_degrees = $BowSprite.rotation_degrees
	$Arrow.gravity_scale = 1
	$Arrow.visible = true
	$Arrow/ArrowCollision.disabled = false
