extends RichTextLabel

func _ready():
	update()

func update():
	set_text("%.2f" % float(Investiment.invest_money_multimarket_fund))
