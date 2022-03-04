extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#variables that will define character sprite and name
var gender : bool = true
var player_name : String = "Mr. Fox"
var current_scene : String = "res://Scenery/bedroom.tscn"
var instructions : bool = true
var money : float = 100.52
var position = Vector2(318,546)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
