extends Node2D

# Code to change to the market minigame ambience

func _ready():
	$winfx.play()
	
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/minigame_marketSoda.tscn")
