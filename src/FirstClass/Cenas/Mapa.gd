extends Node2D

func _ready():
	pass # Replace with function body.


func _on_Button_mapa_voltar_pressed():
	get_tree().change_scene("res://Cenas/Celular.tscn")


func _on_Button_mercado_pressed():
	get_tree().change_scene("res://Scenes/startMarket.tscn")


func _on_Button_faculdade_pressed():
	get_tree().change_scene("res://Scenery/classUniversity.tscn")


func _on_Button_quarto_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")
