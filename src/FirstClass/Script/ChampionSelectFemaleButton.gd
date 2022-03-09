extends Button

# Script when the female sprite is selected
# The Player will play as the female character

export var reference_path = "res://Scenery/NameSelect.tscn"
export(bool) var start_focused = true

func _ready():
	if(start_focused):
		grab_focus()
	
	connect("mouse_entered",self,"on_Button_mouse_entered")
	connect("pressed", self, "on_Button_Pressed")
	
func on_Button_mouse_pressed():
	grab_focus()

func on_Button_Pressed():
	if(reference_path != ""):
		Global.gender = true
		print(Global.gender)
		get_tree().change_scene(reference_path)
	else:
		get_tree().quit()
