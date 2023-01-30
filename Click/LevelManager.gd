extends Node2D

class_name LevelManager

@export
var levels : Array[PackedScene]

var current_level : Level
var current_index : int
# Called when the node enters the scene tree for the first time.
func _ready():
	current_index = 0
	_spawn_level(current_index)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _next_level():
	current_index += 1
	if current_index > 0:
		current_level.queue_free()
	if(current_index == levels.size()):
		print("you win!")
	else:
		_spawn_level(current_index)

func _spawn_level(index : int):
	current_level = levels[current_index].instantiate()
	current_level.level_complete.connect(self._next_level)
	add_child(current_level)
	


