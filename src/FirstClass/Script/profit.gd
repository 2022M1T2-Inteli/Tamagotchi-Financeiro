extends RichTextLabel

func _ready():
	var money = Global.invested_money
	print(money)
	var a = (money * pow(1.05,Global.investimentTimepoupanca)) - money
	set_text(str(a).pad_zeros(2))
	pass # Replace with function body.
