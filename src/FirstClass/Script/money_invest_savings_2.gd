extends RichTextLabel


func _ready():
	set_text(str(Global.money).pad_zeros(2))
	pass # Replace with function body.

