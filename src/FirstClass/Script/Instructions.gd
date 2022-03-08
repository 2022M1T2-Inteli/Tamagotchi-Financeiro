extends Sprite

func _ready():
	if (Global.instructions):
		self.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down")) || (Global.instructions == false):
		Global.instructions = false
		call_deferred("free") # Destroy the node after the current frame.

