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
	get_tree().change_scene("res://Scenes/acoes_baixo_risco.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/acoes_alto_risco_2.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/day_trade.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")
