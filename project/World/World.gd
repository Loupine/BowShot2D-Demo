extends Node2D

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
		#Creates a new arrow instance and reloads the bow if arrows are left
		if arrow_inventory > 1:
			arrow_inventory -= 1
			create_new_arrow()
			$Bow/BowSprite.set_texture(preload("res://Bow/BowLoaded.png"))
			shot = false
			print("arrows left " + str(arrow_inventory))
		else:
			print("You're out of arrows!!!!")
		
	$Bow/BowSprite.rotation_degrees = clamp($Bow/BowSprite.rotation_degrees, -89, -1)
	power = clamp(power, 10, 590)

func create_new_arrow():
	var new_arrow = arrow_projectile.instance()
	current_arrow = new_arrow
	add_child(current_arrow)

#Delete arrows that exit the ObjectKillArea's collision shape
func _on_ObjectKillArea_body_exited(body):
	body.queue_free()
