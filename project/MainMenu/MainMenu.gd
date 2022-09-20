extends Control

func _on_PlayButton_pressed():
	# print out the return value to fix the unused value warning
	print(get_tree().change_scene_to(preload("res://World/World.tscn")))
