extends Control

func _on_quit_pressed():
	get_tree().quit()


func _on_level_play_pressed():
	get_tree().change_scene_to_file("res://Levels/level1.tscn")


func _on_endless_play_pressed():
		get_tree().change_scene_to_file("res://UI/selector.tscn")
