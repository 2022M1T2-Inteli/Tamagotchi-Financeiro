extends RichTextLabel

func _ready():
	update()

func update():
	set_text(str(Investiment.profit_direct_treasury).pad_zeros(2))
	text = str(Investiment.profit_direct_treasury)
