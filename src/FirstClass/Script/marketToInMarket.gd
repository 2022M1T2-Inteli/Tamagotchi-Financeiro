extends Area2D

# Transition between Street and Market
# It allows the player to enter the market ambience

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Area2D2_body_entered(body):
	if body.name == "Player_certo":
		Global.transition = true
		Global.current_scene = "res://Scenes/startMarket.tscn"
		Global.change_position(177,674)
		changer.change_scene(Global.current_scene)
