extends Node2D


func _ready():
	pass # Replace with function body.


func _on_rightRice_pressed():
	get_tree().change_scene("res://Scenes/startminigameRice.tscn")


func _on_wrongRice_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")


func _on_wrongRIce2_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")
