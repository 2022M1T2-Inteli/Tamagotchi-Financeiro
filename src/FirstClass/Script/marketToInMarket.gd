extends Area2D

# Script that change from the Steet Scene to the Market

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		get_tree().change_scene("res://Scenes/startMarket.tscn")
