extends Node2D

# Functions for transition between bank app and cellphone main page

func _ready():
	pass # Replace with function body.

func _on_Button_exit_bank_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")


func _on_Button_exit_bank_left_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")


func _on_Button_exit_bank_right_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")
