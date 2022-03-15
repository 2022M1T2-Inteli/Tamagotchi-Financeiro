extends RichTextLabel

func _ready():
	self.text = (str(Global.money).pad_decimals(2))
