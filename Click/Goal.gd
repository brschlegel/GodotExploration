extends Area2D

signal goal_scored
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if(body.get_meta("type") == "Ball"):
		emit_signal("goal_scored")
	pass # Replace with function body.
