extends Node

class_name Magnetic_Registery

var registry : Array

var coulombs_constant : float = 1000000
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _register_charge(c):
	registry.append(c)
