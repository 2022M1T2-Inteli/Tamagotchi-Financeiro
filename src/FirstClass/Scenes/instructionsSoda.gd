extends Sprite

# Script for the instrunction scene
# It will appear or dissapear depending on the state of the game

func _ready():
	if (Global.instructions[6]):
		self.visible = true
	pass
	get_tree().paused = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down")) || (Global.instructions[6] == false):
		Global.instructions[6] = false
		call_deferred("free")
		get_tree().paused = false
		# Destroy the node after the current frame.
