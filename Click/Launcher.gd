extends Node2D

var ballScene = preload("res://Ball.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if(event is InputEventMouseButton):
		var instance = ballScene.instantiate()
		add_child(instance)
		var rb = instance.get_child(1)
		rb.apply_central_impulse(Vector2(1,1))
		
