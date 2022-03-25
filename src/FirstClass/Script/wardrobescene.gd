extends Node2D

var w_default = preload("res://assets/wolfShirtDefault.png")
var w_yellow = preload("res://assets/wolfShirtYellow.png")
var w_black = preload("res://assets/wolfshirtBlack.png")
var w_purple = preload("res://assets/wolfShirtPurple.png")
var w_green = preload("res://assets/wolfShirtGreen.png")
var w_pink = preload("res://assets/wolfShirtPink.png")

onready var player_sprite = get_node("WolfShirtDefault")
onready var changer = get_parent().get_node("Transition_in")
export var path : String

func _ready():
	for i in range(0,5):
		get_node("Shirt_" + str(i)).visible = StoreManagement.products[2][i]

func _on_sairteste_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")
#	Global.current_scene = "res://Scenery/bedroom.tscn"
#	Global.position.x = 318
#	Global.position.y = 546
#	changer.change_scene(path)


func _on_ShirtYellow_pressed():
	if StoreManagement.products[2][0]:
		player_sprite.set_texture(w_yellow)
	else:
		pass
	

func _on_ShirtBlack_pressed():
	if StoreManagement.products[2][1]:
		player_sprite.set_texture(w_black)
	else:
		pass


func _on_ShirtPurple_pressed():
	if StoreManagement.products[2][2]:
		player_sprite.set_texture(w_purple)
	else:
		pass


func _on_ShirtGreen_pressed():
	if StoreManagement.products[2][3]:
		player_sprite.set_texture(w_green)
	else:
		pass


func _on_ShirtPink_pressed():
	if StoreManagement.products[2][4]:
		player_sprite.set_texture(w_pink)
	else:
		pass


func _on_Default_pressed():
	player_sprite.set_texture(w_default)
