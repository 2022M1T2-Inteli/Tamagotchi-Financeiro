extends Area2D

# Script for change the scene from the bedroom to the Street
# It changes the caracter's position to appear in the right place

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene1_body_entered(body):
	if body.name == "Player_certo":
		Global.transition = true
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.position.x = 318
		Global.position.y = 600
		changer.change_scene(path)
