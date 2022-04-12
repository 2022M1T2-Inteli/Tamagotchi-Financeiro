extends RichTextLabel

func _ready():
	update()
#update investment value label
func update():
	set_text("%.2f" % float(Investiment.invest_money_savings))
