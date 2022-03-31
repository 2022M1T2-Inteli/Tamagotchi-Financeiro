extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_Button2_pressed():
	Global.change_position(15120,696)
	get_tree().change_scene("res://Scenery/streetHouse.tscn")
	
