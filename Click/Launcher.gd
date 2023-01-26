extends Node2D

var ballScene = preload("res://Ball.tscn")
var min_force : float = 400
var max_force : float = 1000
var dist_to_force : float = 3

var isHeld = false;
var timeHeld : float = 0
var line : LauncherLine
var mousePosition : Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	line = get_node("LauncherLine")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(isHeld):
		line._updateLine(mousePosition, mousePosition.length())
	line.visible = isHeld
	pass
	
func _input(event):
	mousePosition = event.position - global_position
	if(event is InputEventMouseButton):
		if(event.pressed):
			isHeld = true
		if(!event.pressed && isHeld ):
			isHeld = false
			var instance = ballScene.instantiate()
			instance.scale = Vector2(.1,.1)
			var force =  clampf(mousePosition.length()  * dist_to_force, min_force, max_force)
			add_child(instance)
			var dir: Vector2 = event.position - global_position
			instance.apply_central_impulse(-dir.normalized() * force)
			
		
		
