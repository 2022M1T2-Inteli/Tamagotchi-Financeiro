extends Node2D

var busTaxi
var newNode
var test
#onready var sceneWithButton = preload("res://Cellphone/Cellphone.tscn")


# Functions for the Map
# This functions are responsible for transitions between sceneries (Fast Travel)

func _ready():
	if Global.current_scene == "res://Scenes/startMarket.tscn":
		$Sprite.position = Vector2(-360,600)
	elif Global.current_scene == "res://Scenery/classUniversity.tscn":
		$Sprite.position = Vector2(-360,500)
	elif Global.current_scene == "res://Scenery/bedroom.tscn":
		$Sprite.position = Vector2(-360,400)
	elif Global.current_scene == "res://Scenes/Bank.tscn":
		$Sprite.position = Vector2(-360,700)
	elif Global.current_scene == "res://Scenery/work.tscn":
		$Sprite.position = Vector2(-360,810)
	elif Global.current_scene == "res://Scenery/streetHouse.tscn":
		$Sprite.position = Vector2(-380,860)


func _on_Button_exit_map_pressed():
	Global.button = true
	self.queue_free()
	
	
func _on_Button_college_pressed():
	busTaxi = preload("res://Scenes/busUniversity.tscn")
	newNode = busTaxi.instance()
	newNode.global_position = Vector2.ZERO
	get_parent().add_child(newNode)
	newNode.global_position = Vector2(0, 0)




func _on_Button_bedroom_pressed():
	print("button 2")
	get_tree().paused = false
	Global.change_position(150, 705)
	Global.current_scene = "res://Scenery/bedroom.tscn"
	get_tree().change_scene("res://Scenery/bedroom.tscn")


func _on_Button_bank_pressed():
	print("button 3")
	busTaxi = preload("res://Scenes/busBank.tscn")
	newNode = busTaxi.instance()
	newNode.global_position = Vector2.ZERO
	get_parent().add_child(newNode)
	newNode.global_position = Vector2(0, 0)

func _on_Button_work_pressed():
	print("button 4")
	busTaxi = preload("res://Scenes/buswork.tscn")
	newNode = busTaxi.instance()
	newNode.global_position = Vector2.ZERO
	get_parent().add_child(newNode)
	newNode.global_position = Vector2(0, 0)

func _on_Button_park_pressed():
	print("button 5")
	busTaxi = preload("res://Scenes/busPark.tscn")
	newNode = busTaxi.instance()
	newNode.global_position = Vector2.ZERO
	get_parent().add_child(newNode)
	newNode.global_position = Vector2(0, 0)


func _on_Button_market_pressed():
	print("button 6")
	busTaxi = preload("res://Scenes/busMarket.tscn")
	newNode = busTaxi.instance()
	newNode.global_position = Vector2.ZERO
	get_parent().add_child(newNode)
	newNode.global_position = Vector2(0, 0)

