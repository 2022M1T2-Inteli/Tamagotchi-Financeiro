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
	if(Global.school):
		get_tree().paused = false
		Global.change_position(13390,714)
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
	else:
		pass
	Global.happiness -= 3

func _on_Button_taxi_pressed():
	if Global.digital_money <= valorTaxi:
		Global.money -= valorTaxi
	else: 
		Global.digital_money -= valorTaxi
	if(Global.school):
		get_tree().paused = false
		Global.change_position(13390,714)
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
	else:
		pass
	Global.happiness -= 2
