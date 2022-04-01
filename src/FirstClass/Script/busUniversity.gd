extends Node2D


var valorBus = 4
var valorTaxi = 10

func _ready():
	pass # Replace with function body.

func _on_Button_bus_pressed():
	if Global.digital_money <= valorBus:
		Global.money -= valorBus
	else: 
		Global.digital_money -= valorBus
	get_tree().paused = false
	if(!Global.school):
		Global.change_position(177, 674)
		Global.current_scene = "res://Scenery/classUniversity.tscn"
		get_tree().change_scene("res://Scenery/classUniversity.tscn")
	Global.happiness -= 3


func _on_Button_taxi_pressed():
	if Global.digital_money <= valorTaxi:
		Global.money -= valorTaxi
	else: 
		Global.digital_money -= valorTaxi
	get_tree().paused = false
	if(!Global.school):
		Global.change_position(177, 674)
		Global.current_scene = "res://Scenery/classUniversity.tscn"
		get_tree().change_scene("res://Scenery/classUniversity.tscn")
	Global.happiness -=2
