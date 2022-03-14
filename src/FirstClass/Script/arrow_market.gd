extends Area2D

# Script that change from the Steet Scene to the Street Market

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.change_position(5445, 500)
		changer.change_scene(Global.current_scene)
