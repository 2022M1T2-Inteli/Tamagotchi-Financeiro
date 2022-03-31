extends Sprite

# Script for the instrunction scene
# It will appear or dissapear depending on the state of the game

func _ready():
		self.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down")):
		self.visible = false
