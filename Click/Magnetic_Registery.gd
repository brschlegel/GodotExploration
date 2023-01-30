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

func _unregister_charge(c):
	registry.remove_at(registry.find(c))

func _get_color(charge_value : float) -> Color:
	return Color.DODGER_BLUE if charge_value <= 0 else Color.FIREBRICK
	
	
