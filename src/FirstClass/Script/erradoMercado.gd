extends Node2D

func _ready():
	$lossfx.play()

func _on_Button_errou_pressed():
	get_tree().change_scene("res://Scenes/proposal1.tscn")
