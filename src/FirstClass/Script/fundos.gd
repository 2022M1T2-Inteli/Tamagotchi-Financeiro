extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/imobiliario.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/multi_mercado.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/acoes.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/acoes_alto_risco_1.tscn")


func _on_Button5_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")
