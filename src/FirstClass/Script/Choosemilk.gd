extends Node2D

var milk1 : float = 5.25 
var milk2 : float = 3.00
var milk3 : float = 4.70

func _ready():
	milk1 += Global.inflation
	milk2 += Global.inflation
	milk3 += Global.inflation
	$RichTextLabel.bbcode_text = (str("[center]%.2f" % float(milk1)))
	$RichTextLabel2.bbcode_text = (str("[center]%.2f" % float(milk2)))
	$RichTextLabel3.bbcode_text = (str("[center]%.2f" % float(milk3)))

func _on_Vmilk_pressed():
	Global.total += 5.25
	Global.products[0] = "res://assets/milk_pink.png"
	get_tree().change_scene("res://Scenes/Market_quiz_right_answer.tscn")

func _on_Xmilk_pressed():
	Global.total += 3
	Global.products[0] = "res://assets/milk_blue.png"
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
	
func _on_xmilk_pressed():
	Global.total += 4.70
	Global.products[0] = "res://assets/milk_yellow.png"
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
