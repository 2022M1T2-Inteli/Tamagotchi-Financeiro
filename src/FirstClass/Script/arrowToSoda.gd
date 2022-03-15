extends Area2D

func _ready():
	pass # Replace with function body.

func _on_Area2D2_body_entered(body):
	if (body.name == "Player_certo"):
		get_tree().change_scene("res://Scenes/chooseRice.tscn")
