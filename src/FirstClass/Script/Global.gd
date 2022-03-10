extends Node

var gender : bool = true
var player_name : String = "Mr. Fox"
var current_scene : String = "res://Scenery/bedroom.tscn"
var instructions = [true, true]
var money : float = 100.52
var position = Vector2(318,546)
var digital_money : float = 0.0
var happiness : int = 100
var health : int = 100
var knowledge : int = 0
var actions : int = 4
var day : int = 1

func _ready():
	pass # Replace with function body.

func are_actions_over():
	if(actions == 0):
		get_tree().change_scene("res://Scenes/background_bedroom_nigth.tscn")
		day += 1
		actions = 4
		
