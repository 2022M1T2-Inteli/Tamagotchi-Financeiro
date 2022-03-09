extends Node2D

# Transition between Street and Bank

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenes/Banco.tscn"
		changer.change_scene(Global.current_scene)
