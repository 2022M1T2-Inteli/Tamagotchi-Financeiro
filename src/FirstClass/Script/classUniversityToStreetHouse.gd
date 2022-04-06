extends Area2D

# Script that change the scene from University to Street

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene2_body_entered(body):
	if body.name == "Player_certo":
		Global.transition = true
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.change_position(2856,546)
		changer.change_scene(Global.current_scene)
		$"/root/Ambient".play()
