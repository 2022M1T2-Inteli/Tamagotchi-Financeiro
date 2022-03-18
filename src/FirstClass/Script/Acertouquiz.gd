extends Node2D

# Button that exit the Quiz end screen

func _ready():
	$winfx.play()

func _on_Button_exit_quiz_pressed():
	get_tree().change_scene("res://Scenery/classUniversity.tscn")
	Global.actions -= 1
	Global.knowledge += 3
	Global.school = true
	Global.are_actions_over()
