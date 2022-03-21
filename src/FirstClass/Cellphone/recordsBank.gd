extends Node2D


func _ready():
	if Global.recordsPrice != 0:
		$RichTextLabel.text = str (Global.recordsPrice)
	
#	$RichTextLabel.text = str (Global.recordsPrice)


func _on_Button_pressed():
	self.queue_free()
