extends RichTextLabel

func _ready():
	update()

func update():
	set_text(str(Investiment.profit_savings).pad_zeros(2))
	text = str(Investiment.profit_savings)
