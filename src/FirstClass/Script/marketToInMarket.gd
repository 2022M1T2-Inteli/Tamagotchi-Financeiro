extends Area2D

# Script that change the scene from University to Street

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Area2D2_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenes/startMarket.tscn"
		Global.change_position(177, 674)
		changer.change_scene(Global.current_scene) # Replace with function body.
