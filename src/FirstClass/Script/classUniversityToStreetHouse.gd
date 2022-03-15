extends Area2D

# Script that change the scene from University to Street

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene2_body_entered(body):
	if body.name == "Player_certo":
		#get_tree().change_scene("res://Scenery/streetHouse.tscn")
		
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.position.x = 8025
		Global.position.y = 546
		changer.change_scene(Global.current_scene)
