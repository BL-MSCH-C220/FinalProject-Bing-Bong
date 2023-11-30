extends Node


enum GameState {IDLE, RUNNING, ENDED}

var game_state

@onready var pipe_spawner = $"../PipeSpawner" as PipeSpawnerLv6
@onready var bird = get_node("../Bird") as Bird
@onready var ground = $"../Ground" as Ground
@onready var game_manager = $"."
@onready var fade = $"../Fade" as Fade
@onready var ui = $"../UI" as UI


var points = 0

func _ready():
	game_state = GameState.IDLE	
	bird.game_started.connect(on_game_started)
	pipe_spawner.bird_crashed.connect(end_game)
	ground.bird_crashed.connect(end_game)
	pipe_spawner.point_scored.connect(point_scored)
	var Instructions = get_node_or_null("/root/main2/Instructions")
	if Instructions != null:
		Instructions.set_instructions("Level 6: Anxiety","Score 30 Points")

func on_game_started():
	game_state = GameState.RUNNING
	pipe_spawner.start_spawning_pipes()
	
func end_game():
	if fade != null: 
		fade.play()
	bird.kill()
	pipe_spawner.stop();
	ground.stop();
	ui.on_game_over()

func point_scored():
	points += 1
	ui.update_points(points)
	if points == 30:
		bird.kill()
		pipe_spawner.stop();
		ground.stop();
		ui.on_game_over()
	
