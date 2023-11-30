extends Control
var starting_in = 5
@onready var level_instruction = $MarginContainer/Level_Instructions

func _ready():
	get_tree().paused = true
	
func set_instructions(n,i):
	$Name.text = n
	$Instructions.text = i

func _on_Timer_timeout():
	starting_in -= 1
	$Starting.text = "Starting in " + str(starting_in)
	if starting_in <= 0:
		level_instruction.visible = true
		queue_free()
		
