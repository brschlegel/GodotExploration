extends Line2D

class_name LauncherLine

var maxWidth : float = 15
var minWidth : float = 5
var distToWidth : float = .01

# Called when the node enters the scene tree for the first time.
func _ready():
	add_point(Vector2(0,0), 0)
	add_point(Vector2(0,1),1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _updateLine(pos : Vector2, dist : float):
	set_point_position(1, pos)
	width = clamp(minWidth + distToWidth * dist, minWidth, maxWidth)
	
