extends Node2D

var shot = false
var power = 200

func _process(_delta):
	if not shot:
		if Input.is_action_pressed("shoot"):
			$Arrow.prepare_arrow($Bow/BowSprite.rotation_degrees)
			$Arrow.shoot_arrow(power)
			$Bow/BowSprite.set_texture(preload("res://Bow/Bow.png"))
			shot = true
		
		elif Input.is_action_pressed("aim_higher"):
			$Bow/BowSprite.rotation_degrees -= 1
			print('Angle: ', round(-$Bow/BowSprite.rotation_degrees))
		
		elif Input.is_action_pressed("aim_lower"):
			$Bow/BowSprite.rotation_degrees += 1
			print('Angle: ', round(-$Bow/BowSprite.rotation_degrees))
		
		elif Input.is_action_pressed("increase_power"):
			power += 10
			print('Power: ', round(power))
			
		elif Input.is_action_pressed("decrease_power"):
			power -= 10
			print('Power: ', round(power))
	
	elif Input.is_action_pressed("reset_bow_and_arrow"):
		#Resets only the Bow Arrow scenes
		#The lines are printed to remove the unused value debugger warning
		print($Arrow.get_tree().reload_current_scene())
		print($Bow.get_tree().reload_current_scene())
	
	$Bow/BowSprite.rotation_degrees = clamp($Bow/BowSprite.rotation_degrees, -89, -1)
	power = clamp(power, 10, 590)
