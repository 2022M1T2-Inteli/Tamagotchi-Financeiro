extends Node2D


func _ready():
	pass # Replace with function body.


func _on_rightRice_pressed():
	get_tree().change_scene("res://Scenes/startminigameRice.tscn")
	Global.total += 23.50

func _on_wrongRice_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")
	Global.total += 18

func _on_wrongRIce2_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")
	Global.total += 12
