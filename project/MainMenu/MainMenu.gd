extends Control

func _on_PlayButton_pressed():
	get_tree().change_scene_to(preload("res://World/World.tscn"))
