extends RichTextLabel

func _ready():
	update()
	pass # Replace with function body.

func update():
	set_text("%.2f" % float(Global.digital_money))
