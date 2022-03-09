extends Node2D

# Functions for transition between Task app and cellphone main page

func _ready():
	pass # Replace with function body.

func _on_Button_exit_task_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")
