extends Node2D

var celltest = preload ("res://Cellphone/Cellphone.tscn")
var new_node

func _ready():
	$Joystick/Control/question_button/AnimationPlayer.play("aviso")
	

