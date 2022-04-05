extends Node2D

var soda1 : float = 18.00
var soda2 : float = 23.50
var soda3 : float = 12.00

func _ready():
	soda1 += Global.inflation
	soda2 += Global.inflation
	soda3 += Global.inflation
	$RichTextLabel.bbcode_text = (str("[center]%.2f" % float(soda1)))
	$RichTextLabel2.bbcode_text = (str("[center]%.2f" % float(soda2)))
	$RichTextLabel3.bbcode_text = (str("[center]%.2f" % float(soda3)))


func _on_rightRice_pressed():
	Global.total += 23.50
	Global.products[1] = "res://assets/riceYellow2.png"
	get_tree().change_scene("res://Scenes/startminigameRice.tscn")

func _on_wrongRice_pressed():
	Global.total += 18
	Global.products[1] = "res://assets/riceBlue2.png"
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")

func _on_wrongRIce2_pressed():
	Global.total += 12
	Global.products[1] = "res://assets/riceRed2.png"
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")
