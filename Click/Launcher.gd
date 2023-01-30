extends Node2D

var ballScene = preload("res://Ball.tscn")
var min_force : float = 400
var max_force : float = 1000
var dist_to_force : float = 3

var isHeld = false;
var timeHeld : float = 0
var line : LauncherLine
var mousePosition : Vector2

var ball_parent : Node2D
# Called when the node enters the scene tree for the first time.
func _ready():
	line = get_node("LauncherLine")
	ball_parent = get_node("BallParent")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(isHeld):
		line._updateLine(mousePosition, mousePosition.length())
	line.visible = isHeld
	if Input.is_action_just_pressed("DebugKillAllBalls"):
		for n in ball_parent.get_children():
			n.queue_free()
	pass
	
func _input(event):
	if event is InputEventMouse:
		mousePosition = event.position - global_position
	if(event is InputEventMouseButton):
		if(event.pressed):
			isHeld = true
		if(!event.pressed && isHeld ):
			isHeld = false
			var instance = ballScene.instantiate()
			instance.scale = Vector2(.1,.1)
			var force =  clampf(mousePosition.length()  * dist_to_force, min_force, max_force)
			ball_parent.add_child(instance)
			var dir: Vector2 = event.position - global_position
			instance.apply_central_impulse(-dir.normalized() * force)
