extends Node2D

signal power_changed(new_power)
signal angle_changed(new_angle)
signal inventory_size_changed(new_inventory_size)

var shot = false
var power = 200
var arrow_inventory = 5
const arrow_projectile = preload("res://Arrow/Arrow.tscn")
var current_arrow

func _ready():
	current_arrow = arrow_projectile.instance()
	add_child(current_arrow)

func _process(_delta):
	if not shot:
		if Input.is_action_pressed("shoot"):
			current_arrow.prepare_arrow($Bow/BowSprite.rotation_degrees)
			current_arrow.shoot_arrow(power)
			$Bow/BowSprite.set_texture(preload("res://Bow/Bow.png"))
			$Bow/BowSound.playing = true
			shot = true
			arrow_inventory -= 1
			emit_signal("inventory_size_changed", arrow_inventory)
		
		elif Input.is_action_pressed("aim_higher"):
			$Bow/BowSprite.rotation_degrees -= 1
			emit_signal("angle_changed", -$Bow/BowSprite.rotation_degrees)
		
		elif Input.is_action_pressed("aim_lower"):
			$Bow/BowSprite.rotation_degrees += 1
			emit_signal("angle_changed", -$Bow/BowSprite.rotation_degrees)
		
		elif Input.is_action_pressed("increase_power"):
			power += 10
			emit_signal("power_changed", power)
			
		elif Input.is_action_pressed("decrease_power"):
			power -= 10
			emit_signal("power_changed", power)
	
	elif Input.is_action_pressed("reset_bow_and_arrow"):
		#Creates a new arrow instance and reloads the bow if arrows are left
		if arrow_inventory > 0:
			create_new_arrow()
			$Bow/BowSprite.set_texture(preload("res://Bow/BowLoaded.png"))
			shot = false
		else:
			# return player to MainMenu and restart game
			print(get_tree().change_scene_to(load("res://MainMenu/MainMenu.tscn")))
		
	$Bow/BowSprite.rotation_degrees = clamp($Bow/BowSprite.rotation_degrees, -89, -1)
	power = clamp(power, 10, 590)

func create_new_arrow():
	var new_arrow = arrow_projectile.instance()
	current_arrow = new_arrow
	add_child(current_arrow)

#Delete arrows that exit the ObjectKillArea's collision shape
func _on_ObjectKillArea_body_exited(body):
	body.queue_free()
