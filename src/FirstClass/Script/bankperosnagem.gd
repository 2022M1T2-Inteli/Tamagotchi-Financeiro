extends KinematicBody2D

func _ready():
	pass # Replace with function body.

func _on_Detector_body_entered(body):
	body.name == "Player_certo"
	Global.actions -= 1
	get_tree().change_scene("res://Scenes/money_digital+physicist.tscn")


func _on_Detector_body_exited(body):
	pass # Replace with function body.
