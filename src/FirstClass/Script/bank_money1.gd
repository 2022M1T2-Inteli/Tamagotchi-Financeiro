extends Area2D


# investiment scene transition
func _on_Area2D_body_entered(body):
	if (body.name == "Player_certo"):
		Global.excla3 = true
		get_tree().change_scene("res://Scenes/bank_3.tscn")
