extends Node2D

# Functions for the Map
# This functions are responsible for transitions between sceneries (Fast Travel)

func _ready():
	pass # Replace with function body.

func _on_Button_exit_map_pressed():
	self.queue_free()


func _on_Button_market_pressed():
	if(Global.school):
		get_tree().paused = false
		Global.change_position(150,705)
		get_tree().change_scene("res://Scenes/startMarket.tscn")
	else:
		pass


func _on_Button_college_pressed():
	get_tree().paused = false
	if(!Global.school):
		Global.change_position(177, 674)
		get_tree().change_scene("res://Scenery/classUniversity.tscn")


func _on_Button_bedroom_pressed():
	get_tree().paused = false
	Global.change_position(150, 705)
	get_tree().change_scene("res://Scenery/bedroom.tscn")


func _on_Button_bank_pressed():
	if(Global.school):
		get_tree().paused = false
		Global.change_position(-1040, 218)
		get_tree().change_scene("res://Scenes/Bank.tscn")
	else:
		pass
