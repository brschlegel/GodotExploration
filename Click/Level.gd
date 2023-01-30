extends Node2D

class_name Level

signal level_complete
# Called when the node enters the scene tree for the first time.
func _ready():
	$Goal.goal_scored.connect(self._on_goal_scored)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_goal_scored():
	level_complete.emit()
	print("goal scored")
	pass # Replace with function body.
