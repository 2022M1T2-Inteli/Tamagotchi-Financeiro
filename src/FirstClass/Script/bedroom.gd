extends Node2D

var celltest = preload ("res://Cellphone/Cellphone.tscn")
var new_node

func _ready():
	$Joystick/Control/question_button/AnimationPlayer.play("aviso")
	for i in range(1,5):
		get_node(str(i)).visible = StoreManagement.products[3][i-1]


func _on_ComputerArea_body_entered(body):
	if body.name == "Player_certo":
		get_tree().change_scene("res://Scenes/StoreHome.tscn")



