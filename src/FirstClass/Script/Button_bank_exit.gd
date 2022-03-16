extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/Bank.tscn")


func _on_Button_savings_pressed():
	get_tree().change_scene("res://Scenes/savings - deposit.tscn")

func _on_Button_CDI_pressed():
	get_tree().change_scene("res://Scenes/CDI_2.tscn")
