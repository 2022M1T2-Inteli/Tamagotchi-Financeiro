extends RichTextLabel
# set global digital money to text label
func _ready():
	update()

func update():
	set_text("%.2f" % float(Global.digital_money))
