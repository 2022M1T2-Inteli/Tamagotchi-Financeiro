extends LineEdit

func _ready():
	grab_focus()
	set_cursor_position(len(text))
