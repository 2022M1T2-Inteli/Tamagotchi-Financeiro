extends LineEdit

export var reference_path = "res://Scenery/bedroom.tscn"


# Called when the node enters the scene tree for the first time.
func _ready():
	grab_focus()
	set_cursor_position(len(text))
	pass # Replace with function body.



func _on_LineEdit_text_entered(new_text):
	Global.player_name = new_text
	print(Global.player_name)
	get_tree().change_scene(reference_path)
	pass # Replace with function body.
