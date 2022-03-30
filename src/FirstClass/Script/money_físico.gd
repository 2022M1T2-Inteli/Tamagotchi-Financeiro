extends RichTextLabel

func _ready():
	self.bbcode_text = (str ("[center]R$%.2f" % float (Global.money)))
