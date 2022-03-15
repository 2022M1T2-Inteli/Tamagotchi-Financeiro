extends RichTextLabel

func _ready():
	update()
	pass # Replace with function body.

func update():
	set_text(str(Global.money).pad_zeros(2))
