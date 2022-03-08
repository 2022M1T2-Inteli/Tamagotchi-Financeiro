extends LineEdit

export var reference_path = "res://Scenery/bedroom.tscn"

func _ready():
	grab_focus()
	set_cursor_position(len(text))



func _on_LineEdit_text_entered(new_text):
	Global.player_name = new_text
	print(Global.player_name)
	get_tree().change_scene(reference_path)

func _on_ContinueButton_pressed(): # On continue button pressed
	Global.player_name = text
	print(Global.player_name)
	get_tree().change_scene(reference_path) # Change scene to the next one