extends Node2D

func _ready():
	$RichTextLabel.text = str ("R$ %.2f" % float(Global.money))
	$RichTextLabel2.text = str ("R$ %.2f" % float(Global.digital_money))
	$RichTextLabel3.text = str ("R$ %.2f" % float(Global.monthly_expenses))
	$RichTextLabel4.text = str (Global.passive_happiness)
	if Global.player_job >= 1:
		$RichTextLabel5.text = str ("R$ %.2f" % float((Global.player_job *100)))
	else:
		$RichTextLabel5.text = str(0)

func _on_Button_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")
