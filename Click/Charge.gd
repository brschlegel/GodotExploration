extends Node2D

class_name Charge
@export
var charge : float

var minDistThreshold : float = .001
# Called when the node enters the scene tree for the first time.
func _ready():
	MagneticRegistery._register_charge(self)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _calculate_force() -> Vector2:
	var force : Vector2 = Vector2.ZERO
	for m in MagneticRegistery.registry:
		
		var dist = clampf(global_position.distance_squared_to(m.global_position), minDistThreshold, 9999999)
		#Ignore if its me
		if m != self:
			var mag = (MagneticRegistery.coulombs_constant * abs(charge) * abs(m.charge)) / (dist)
			force += -(signf(charge) * signf(m.charge)) * global_position.direction_to(m.global_position) * mag
	return force
	
func _exit_tree():
	MagneticRegistery._unregister_charge(self)
