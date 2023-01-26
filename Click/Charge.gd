extends Node2D

class_name Charge
@export
var charge : float

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
		#Ignore if its me
		if m != self:
			var mag = (MagneticRegistery.coulombs_constant * abs(charge) * abs(m.charge)) / (global_position.distance_squared_to(m.global_position))
			force += -(signf(charge) * signf(m.charge)) * global_position.direction_to(m.global_position) * mag
	return force
	
