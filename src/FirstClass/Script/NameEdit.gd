extends LineEdit

# Script that redirect from the Name select to the bedroom

export var reference_path = "res://Scenery/bedroom.tscn"

func _ready():
	grab_focus()
	set_cursor_position(len(text))

func _on_LineEdit_text_entered(new_text):
	Global.player_name = new_text
	print(Global.player_name)
	get_tree().change_scene(reference_path)

#redirect player to storytelling
func _on_ContinueButton_pressed(): # On continue button pressed
	get_tree().change_scene("res://Scenes/instructions1.tscn")
