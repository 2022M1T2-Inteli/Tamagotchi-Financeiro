extends Node2D

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene2_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.position.x = 2858
		Global.position.y = 546
		changer.change_scene(Global.current_scene)
