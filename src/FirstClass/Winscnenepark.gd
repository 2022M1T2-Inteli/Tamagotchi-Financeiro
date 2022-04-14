extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.happiness += 3
	if Global.digital_money >+ 50:
		Global.digital_money -= 50
	else: Global.money -= 50


func _on_Buttonsim_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_Buttonnao_pressed():
	Global.change_position(15180,662)
	get_tree().change_scene("res://Scenery/streetHouse.tscn")
