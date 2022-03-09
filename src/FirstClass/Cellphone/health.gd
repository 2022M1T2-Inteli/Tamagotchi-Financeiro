extends Node2D

# Functions for transition between health status and cellphone main page

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_question_health_pressed():
	pass # Replace with function body.


func _on_Button_exit_health_pressed():
	get_tree().change_scene("res://Cellphone/Status.tscn")
