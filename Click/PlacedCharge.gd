extends Node2D

class_name PlacedCharge

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Shape").color = MagneticRegistery._get_color(get_node("Charge").charge)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
