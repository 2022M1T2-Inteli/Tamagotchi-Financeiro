extends Node2D

# Market minigame choise system

func _ready():
	pass # Replace with function body.

func _on_Vmilk_pressed():
	get_tree().change_scene("res://Scenes/Market_quiz_right_answer.tscn")


func _on_Xmilk_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")


func _on_xmilk_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
