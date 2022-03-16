extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_savings_pressed():
	
		if Global.savings == 0 :
			get_tree().change_scene("res://Scenes/savings_2.tscn")
			Global.savings = 1
		else: 
			get_tree().change_scene("res://Scenes/savings - deposit.tscn")


func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/Bank.tscn")


func _on_Button_CDI_pressed():
		if Global.CDI == 0 :
			get_tree().change_scene("res://Scenes/CDI.tscn")
			Global.CDI = 1
		else: 
			get_tree().change_scene("res://Scenes/CDI_2.tscn")
