extends Node2D

#pre load shirts sprites
var w_default = preload("res://assets/wolfShirtDefault.png")
var b_default = preload("res://assets/b_default.png")
var w_yellow = preload("res://assets/wolfShirtYellow.png")
var w_black = preload("res://assets/wolfshirtBlack.png")
var w_purple = preload("res://assets/wolfShirtPurple.png")
var w_green = preload("res://assets/wolfShirtGreen.png")
var w_pink = preload("res://assets/wolfShirtPink.png")

onready var player_sprite = get_node("WolfShirtDefault")
onready var changer = get_parent().get_node("Transition_in")
export var path : String

#shirt color indication
func _ready():
	for i in range(0,5):
		get_node("Shirt_" + str(i)).visible = StoreManagement.products[2][i]
	$Shirt_0/textYellow.bbcode_text = str ("[center]AMARELO")
	$Shirt_1/textBlack.bbcode_text = str ("[center]PRETA")
	$Shirt_2/textPurple.bbcode_text = str ("[center]ROXA")
	$Shirt_3/textGreen.bbcode_text = str ("[center]VERDE")
	$Shirt_4/textPink.bbcode_text = str ("[center]ROSA")

#go back to bedroom
func _on_sairteste_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")

#functions to change the shirt and check if they were bought

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
	Global.purple = true
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

#set player to deafault 
func _on_Default_pressed():
	if Global.gender == true:
		player_sprite.set_texture(w_default)
