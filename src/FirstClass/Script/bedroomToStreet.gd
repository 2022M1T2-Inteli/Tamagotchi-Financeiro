extends Area2D

# Script for change the scene from the bedroom to the Street
# It changes the caracter's position to appear in the right place

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene1_body_entered(body):
	get_tree().paused = true
	get_tree().get_root().set_process_input(false)
	get_tree().paused = false
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.position.x = 318
		Global.position.y = 546
		changer.change_scene(path)
