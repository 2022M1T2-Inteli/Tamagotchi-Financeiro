extends Node2D


func _ready():
	pass # Replace with function body.


func _on_rightRice_pressed():
	Global.total += 23.50
	Global.products[1] = "res://assets/riceYellow2.png"
	get_tree().change_scene("res://Scenes/startminigameRice.tscn")

func _on_wrongRice_pressed():
	Global.total += 18
	Global.products[1] = "res://assets/riceBlue2.png"
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")

func _on_wrongRIce2_pressed():
	Global.total += 12
	Global.products[1] = "res://assets/riceRed2.png"
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")
