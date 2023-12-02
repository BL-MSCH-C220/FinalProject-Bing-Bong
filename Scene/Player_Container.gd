extends Node2D

func _physics_process(_delta):
	if get_child_count() == 0 and Global.Player != null:
		var bird = Global.Player.instantiate() as Bird
		add_child(bird) 
