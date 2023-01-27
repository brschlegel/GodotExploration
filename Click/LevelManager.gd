extends Node2D

class_name LevelManager

@export
var levels : Array[Level]

var current_level : Level
var current_index : int
# Called when the node enters the scene tree for the first time.
func _ready():
	current_index = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


