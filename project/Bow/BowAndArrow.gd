extends RigidBody2D

var shot = false
var power = 200

func _process(_delta):
	if not shot:
		if Input.is_action_pressed("shoot"):
			prepare_arrow()
			var impulse = Vector2(power, 0).rotated(deg2rad($BowSprite.rotation_degrees))
			$Arrow.apply_impulse(Vector2.ZERO, impulse)
			$BowSprite.set_texture(preload("res://Bow/Bow.png"))
			shot = true
		
		elif Input.is_action_pressed("aim_higher"):
			$BowSprite.rotation_degrees -= 1
			print('Angle: ', $BowSprite.rotation_degrees)
		
		elif Input.is_action_pressed("aim_lower"):
			$BowSprite.rotation_degrees += 1
			print('Angle: ', $BowSprite.rotation_degrees)
		
		elif Input.is_action_pressed("increase_power"):
			power += 10
			print('Power: ', power)
		elif Input.is_action_pressed("decrease_power"):
			power -= 10
			print('Power: ', power)
	
	elif Input.is_action_pressed("reset_bow_and_arrow"):
		#Resets only the BowAndArrow scene and all values within
		#The line is printed to remove the unused value debugger warning
		print(get_tree().reload_current_scene())
	
	power = clamp(power, 10, 600)
	$BowSprite.rotation_degrees = clamp($BowSprite.rotation_degrees, -90, 0)

func prepare_arrow():
	#makes sure the arrow is fired in the right orientation, is visible, 
	#has colision, and has gravity before firing
	$Arrow/ArrowSprite.rotation_degrees = $BowSprite.rotation_degrees
	$Arrow.gravity_scale = 1
	$Arrow.visible = true
	$Arrow/ArrowCollision.disabled = false
