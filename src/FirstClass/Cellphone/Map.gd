extends Node2D

# Functions for the Map
# This functions are responsible for transitions between sceneries (Fast Travel)

func _ready():
	if Global.current_scene == "res://Scenes/startMarket.tscn":
		$Sprite.position = Vector2(728,298)
	elif Global.current_scene == "res://Scenery/classUniversity.tscn":
		$Sprite.position = Vector2(728,226)
	elif Global.current_scene == "res://Scenery/bedroom.tscn":
		$Sprite.position = Vector2(728,150)
	elif Global.current_scene == "res://Scenes/Bank.tscn":
		$Sprite.position = Vector2(728,370)
	elif Global.current_scene == "res://Scenery/work.tscn":
		$Sprite.position = Vector2(728,456)
	elif Global.current_scene == "res://Scenery/streetHouse.tscn":
		$Sprite.position = Vector2(656,301)
	pass # Replace with function body.

func _on_Button_exit_map_pressed():
	self.queue_free()


func _on_Button_market_pressed():
	if(Global.school):
		get_tree().paused = false
		Global.change_position(150,705)
		Global.current_scene = "res://Scenes/startMarket.tscn"
		get_tree().change_scene("res://Scenes/startMarket.tscn")
	else:
		pass


func _on_Button_college_pressed():
	get_tree().paused = false
	if(!Global.school):
		Global.change_position(177, 674)
		Global.current_scene = "res://Scenery/classUniversity.tscn"
		get_tree().change_scene("res://Scenery/classUniversity.tscn")


func _on_Button_bedroom_pressed():
	get_tree().paused = false
	Global.change_position(150, 705)
	Global.current_scene = "res://Scenery/bedroom.tscn"
	get_tree().change_scene("res://Scenery/bedroom.tscn")


func _on_Button_bank_pressed():
	if(Global.school):
		get_tree().paused = false
		Global.change_position(-1040, 218)
		Global.current_scene = "res://Scenes/Bank.tscn"
		get_tree().change_scene("res://Scenes/Bank.tscn")
	else:
		pass

func _on_Button_work_pressed():
	if(Global.school):
		get_tree().paused = false
		Global.change_position(151,689)
		Global.current_scene = "res://Scenery/work.tscn"
		get_tree().change_scene("res://Scenery/work.tscn")
	else:
		pass

func _on_Button_park_pressed():
	if(Global.school):
		get_tree().paused = false
		Global.change_position(13390,714)
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
	else:
		pass

