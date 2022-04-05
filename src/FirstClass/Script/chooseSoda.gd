extends Node2D

var soda1 : float = 4.00
var soda2 : float = 2.00
var soda3 : float = 2.30

func _ready():
	soda1 += Global.inflation
	soda2 += Global.inflation
	soda3 += Global.inflation
	$RichTextLabel.bbcode_text = str("[center]%.2f" % float (soda1))
	$RichTextLabel2.bbcode_text = str("[center]%.2f" % float (soda2))
	$RichTextLabel3.bbcode_text = str("[center]%.2f" % float (soda3))

func _on_rigthSoda_pressed():
	Global.total += 4
	Global.products[2] = "res://assets/sodaPurple.png"
	get_tree().change_scene("res://Scenes/rightSodaChoose.tscn")

func _on_wrongSoda_pressed():
	Global.total += 2
	Global.products[2] = "res://assets/sodaRed.png"
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
	
func _on_wrongSoda2_pressed():
	Global.total += 2.30
	Global.products[2] = "res://assets/sodaGreen.png"
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
