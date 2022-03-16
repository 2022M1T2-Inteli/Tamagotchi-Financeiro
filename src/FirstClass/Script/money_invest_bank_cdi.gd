extends RichTextLabel

func _ready():
	set_text(str(Global.invested_money_cdi).pad_zeros(2))
	pass # Replace with function body.
