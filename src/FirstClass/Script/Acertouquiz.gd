extends Node2D

# Button that exit the Quiz end screen

func _ready():
	pass # Replace with function body.

func _on_Button_exit_quiz_pressed():
	get_tree().change_scene("res://Scenery/classUniversity.tscn")
	Global.are_actions_over()
