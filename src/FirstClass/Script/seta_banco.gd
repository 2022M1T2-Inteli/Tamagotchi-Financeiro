extends Node2D

# Transition between Street and Bank
# It allows the player to enter the bank ambience

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.transition = true
		Global.current_scene = "res://Scenes/Bank.tscn"
		Global.change_position(-1041, 218)
		changer.change_scene(Global.current_scene)
