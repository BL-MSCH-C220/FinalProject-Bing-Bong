extends Node2D

var bird

func _physics_process(_delta):
	if get_child_count() == 0 and Global.Player != null:
		bird = Global.Player.instantiate()
		add_child(bird) 
