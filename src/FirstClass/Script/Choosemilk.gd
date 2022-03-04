extends Node2D

func _ready():
	pass # Replace with function body.

func _on_certoLeite_pressed():
	get_tree().change_scene("res://Scenes/certoMercado.tscn")


func _on_erradoLeite_pressed():
	get_tree().change_scene("res://Scenes/erradoMercado.tscn")


func _on_erradoLeite1_pressed():
	get_tree().change_scene("res://Scenes/erradoMercado.tscn")
