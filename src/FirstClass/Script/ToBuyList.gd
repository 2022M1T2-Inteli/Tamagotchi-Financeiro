extends Sprite

# Script for the instrunction scene
# It will appear or dissapear depending on the state of the game

func _ready():
	if (Global.instructions[1]):
		self.visible = true


func _process(delta):
	if (Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down")) || (Global.instructions[1] == false):
		Global.instructions[1] = false
		call_deferred("free")

