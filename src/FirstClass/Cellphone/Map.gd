extends Node2D

var busTaxi
var new_node
var test
#onready var sceneWithButton = preload("res://Cellphone/Cellphone.tscn")


# Functions for the Map
# This functions are responsible for transitions between sceneries (Fast Travel)

func _ready():
	if Global.current_scene == "res://Scenes/startMarket.tscn":
		$Sprite.position = Vector2(-340,680)
	elif Global.current_scene == "res://Scenery/classUniversity.tscn":
		$Sprite.position = Vector2(-340,580)
	elif Global.current_scene == "res://Scenery/bedroom.tscn":
		$Sprite.position = Vector2(-340,480)
	elif Global.current_scene == "res://Scenes/Bank.tscn":
		$Sprite.position = Vector2(-340,780)
	elif Global.current_scene == "res://Scenery/work.tscn":
		$Sprite.position = Vector2(-340,880)
	elif Global.current_scene == "res://Scenery/streetHouse.tscn":
		$Sprite.position = Vector2(-350,800)

func _on_Button_exit_map_pressed():
	Global.button = true
	self.queue_free()
	
	
func _on_Button_college_pressed() -> void:
	busTaxi = preload("res://Scenes/busUniversity.tscn")
	new_node = busTaxi.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)



func _on_Button_bedroom_pressed():
	get_tree().paused = false
	Global.change_position(150, 705)
	Global.current_scene = "res://Scenery/bedroom.tscn"
	get_tree().change_scene("res://Scenery/bedroom.tscn")


func _on_Button_bank_pressed():
	busTaxi = preload("res://Scenes/busBank.tscn")
	new_node = busTaxi.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)

func _on_Button_work_pressed():
	busTaxi = preload("res://Scenes/buswork.tscn")
	new_node = busTaxi.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)

func _on_Button_park_pressed():
	busTaxi = preload("res://Scenes/busPark.tscn")
	new_node = busTaxi.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)


func _on_Button_market_pressed():
	busTaxi = preload("res://Scenes/busMarket.tscn")
	new_node = busTaxi.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)

