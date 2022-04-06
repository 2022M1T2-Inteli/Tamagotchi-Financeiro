extends Area2D

# Script that change from the Steet Scene to the Bedroom

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene2_body_entered(body):
	if body.name == "Player_certo":
		Global.transition = true
		Global.current_scene = "res://Scenery/bedroom.tscn"
		Global.change_position(177, 674)
		changer.change_scene(Global.current_scene)
