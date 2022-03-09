extends Node2D

# Functions for transition between happiness status and cellphone main page

func _ready():
	pass # Replace with function body.

func _on_Button_question_happiness_pressed():
	pass # Replace with function body.

func _on_Button_exit_happiness_pressed():
	get_tree().change_scene("res://Cellphone/Status.tscn")
