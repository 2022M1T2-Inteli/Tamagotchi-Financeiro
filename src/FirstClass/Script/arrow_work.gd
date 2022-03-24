extends Area2D

# Script that change the scene from University to Street

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _ready():
	Global.change_position(147,682)

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.change_position(10525,546)
		changer.change_scene(Global.current_scene)

