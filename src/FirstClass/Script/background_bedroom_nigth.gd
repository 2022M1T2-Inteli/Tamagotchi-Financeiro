extends Area2D

onready var changer = get_parent().get_node("Transition_in")

export var path : String

#

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/bedroom.tscn"
		Global.position.x = 150
		Global.position.y = 705
		Global.day += 1
		Global.actions = 3
		Global.school = false
		changer.change_scene(Global.current_scene)
		Global.investimentTimepoupanca +=1
