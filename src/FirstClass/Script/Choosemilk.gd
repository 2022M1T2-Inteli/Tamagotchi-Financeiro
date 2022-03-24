extends Node2D

# Market minigame choise system

func _ready():
	pass # Replace with function body.

func _on_Vmilk_pressed():
	Global.total += 5.25
#	Global.recordsPrice += 5.25
	Global.products[0] = "res://assets/milk_pink.png"
	get_tree().change_scene("res://Scenes/Market_quiz_right_answer.tscn")

func _on_Xmilk_pressed():
	Global.total += 3
#	Global.recordsPrice += 3
	Global.products[0] = "res://assets/milk_blue.png"
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
	
func _on_xmilk_pressed():
	Global.total += 4.70
#	Global.recordsPrice += 4.70
	Global.products[0] = "res://assets/milk_yellow.png"
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
