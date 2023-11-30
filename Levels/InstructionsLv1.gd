extends Control
var starting_in = 3

func _ready():
	pass

func set_instructions(n,i):
	$Name.text = n
	$Goal.text = i

func _on_timer_timeout():
	starting_in -= 1
	$Starting.text = "Starting in " + str(starting_in)
	if starting_in <= 0:
		queue_free()
