extends Area2D


func _on_Area2D2_body_entered(body):
	if (body.name == "Player_certo"):
		get_tree().change_scene("res://Scenes/chooseSoda.tscn")
