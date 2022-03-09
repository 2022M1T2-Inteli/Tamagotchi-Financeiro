extends Node2D

# Market minigame choise system

func _ready():
	pass # Replace with function body.

func _on_Vmilk_pressed():
	get_tree().change_scene("res://Scenes/certoMercado.tscn")


func _on_Xmilk_pressed():
	get_tree().change_scene("res://Scenes/erradoMercado.tscn")


func _on_xmilk_pressed():
	get_tree().change_scene("res://Scenes/erradoMercado.tscn")
