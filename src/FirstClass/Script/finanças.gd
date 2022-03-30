extends Node2D

func _ready():
	$RichTextLabel.text = str ("R$ %.2f" % float(Global.money))
	$RichTextLabel2.text = str ("R$ %.2f" % float(Global.digital_money))
	$RichTextLabel3.text = str ("R$ %.2f" % float(Global.monthly_expenses))
	$RichTextLabel4.text = str (Global.cont)
	$RichTextLabel5.text = str (Global.work)

func _on_Button_pressed():
	pass # Replace with function body.
