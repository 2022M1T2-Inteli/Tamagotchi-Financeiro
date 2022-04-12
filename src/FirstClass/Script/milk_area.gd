extends Area2D

# Code for milk area. When entered, it will
# change the scene to a three products (milk) selection

func _ready():
	pass


func _on_Area2D2_body_entered(body):
	if (body.name == "Player_certo"):
		get_tree().change_scene("res://Scenes/Choosemilk.tscn")
