extends RichTextLabel

#function for give player feedback of how much money he has
func _ready():
	self.bbcode_text = (str ("[center]R$%.2f" % float (Global.money)))
