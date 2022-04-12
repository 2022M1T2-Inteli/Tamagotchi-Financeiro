extends Area2D

# Code for rice area. When entered, it will
# change the scene to a three products (rice) selection

func _ready():
	pass
	
	
func _on_Area2D2_body_entered(body):
	if (body.name == "Player_certo"):
		get_tree().change_scene("res://Scenes/chooseRice.tscn")
