extends Control

func _on_World_angle_changed(new_angle):
	set_angle_text(new_angle)

func _on_World_inventory_size_changed(new_inventory_size):
	set_inventory_size_text(new_inventory_size)

func _on_World_power_changed(new_power):
	set_power_text(new_power)

func set_angle_text(angle):
	$HUDAnimationPlayer.play("GrowAngleLabel")
	$VBoxContainer/AngleLabel.text = "Angle: " + str(round(angle))

func set_inventory_size_text(arrows_left):
	$HUDAnimationPlayer.play("GrowInventoryLabel")
	$VBoxContainer/InventorySizeLabel.text = "Arrows left: " + str(arrows_left)
	
	if arrows_left == 0:
		$VBoxContainer/InventorySizeLabel.text = "No arrows left! Game Over!\nPress Reload to reset the game."

func set_power_text(power):
	$HUDAnimationPlayer.play("GrowPowerLabel")
	$VBoxContainer/PowerLabel.text = "Power: " + str(power)
