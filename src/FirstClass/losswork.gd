extends Node2D

func _ready():
	$lossfx.play()

func _on_Button_pressed():
	Global.change_position(151,689)
	get_tree().change_scene("res://Scenery/work.tscn")

