extends RichTextLabel

func _ready():
	update()

func update():
	set_text("%.2f" % float(Investiment.profit_day_trade))
