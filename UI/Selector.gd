extends Control


func _on_joy_bird_pressed():
	Global.Player = preload("res://Scene/bird.tscn")
	get_tree().change_scene_to_file("res://Scene/main.tscn")
	


func _on_sadness_bird_pressed():
	Global.Player = preload("res://Levels/sadbird.tscn")
	get_tree().change_scene_to_file("res://Scene/main.tscn")


func _on_disgust_bird_pressed():
	Global.Player = preload("res://Levels/digustbird.tscn")
	get_tree().change_scene_to_file("res://Scene/main.tscn")


func _on_anxiety_bird_pressed():
	Global.Player = preload("res://Levels/anxietybird.tscn")
	get_tree().change_scene_to_file("res://Scene/main.tscn")


func _on_fear_bird_pressed():
	Global.Player = preload("res://Levels/fearbird.tscn")
	get_tree().change_scene_to_file("res://Scene/main.tscn")


func _on_anger_bird_pressed():
	Global.Player = preload("res://Levels/angrybird.tscn")
	get_tree().change_scene_to_file("res://Scene/main.tscn")
