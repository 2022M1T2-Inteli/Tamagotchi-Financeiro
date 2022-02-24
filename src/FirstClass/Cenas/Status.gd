extends Node2D

func _ready():
	pass # Replace with function body.


func _on_Button_sade_pressed():
	get_tree().change_scene("res://Cenas/Saúde.tscn")


func _on_Button_felicidade_pressed():
	get_tree().change_scene("res://Cenas/Felicidade.tscn")


func _on_Button_Conhecimento_pressed():
	get_tree().change_scene("res://Cenas/Conhecimento.tscn")


func _on_Button_voltar_status_pressed():
	get_tree().change_scene("res://Cenas/Celular.tscn")
