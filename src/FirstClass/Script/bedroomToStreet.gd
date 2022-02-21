extends Area2D

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Goalscene1_body_entered(body):
	if body.name == "Player_certo":
		changer.change_scene(path)
