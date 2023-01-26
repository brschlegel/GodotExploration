extends Node2D

class_name PlacedCharge

var blue : Color = Color(0,0,1)
var red : Color = Color(1,0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Shape").color = blue if get_node("Charge").charge <= 0 else red
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
