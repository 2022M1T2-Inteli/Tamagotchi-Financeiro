extends Node2D

# Code to change to the explanation of the right choise

func _ready():
	$lossfx.play()

func _on_Button_errou_pressed():
	get_tree().change_scene("res://Scenes/proposal1.tscn")
