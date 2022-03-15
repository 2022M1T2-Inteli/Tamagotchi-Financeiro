extends Node

var gender : bool = true
var player_name : String = "Mr. Fox"
var current_scene : String = "res://Scenery/bedroom.tscn"
var instructions = [true, true, true, true, true, true, true, true]
var money : float = 100.52
var position = Vector2(150,705)
var digital_money : float = 0.0
var happiness : int = 100
var health : int = 100
var knowledge : int = 0
var actions : int = 3
var day : int = 1

func _ready():
	pass # Replace with function body.

func are_actions_over():
	if(actions == 0):
		get_tree().change_scene("res://Scenery/Night_fall.tscn")
		
func change_position(a,b):
	position.x = a
	position.y = b
