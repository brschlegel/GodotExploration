extends RigidBody2D

var color : Color
# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("type", "Ball")
	color = MagneticRegistery._get_color(get_node("Charge").charge)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var magnetic_force : Vector2 = get_node("Charge")._calculate_force()
	apply_central_force(magnetic_force)
	pass

func _draw():
	draw_circle(Vector2.ZERO, 25, color )
