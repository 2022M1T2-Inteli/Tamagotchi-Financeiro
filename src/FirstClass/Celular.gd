extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_Mapa_pressed():
	get_tree().change_scene("res://Cenas/Mapa.tscn")


func _on_Button_Banco_pressed():
	get_tree().change_scene("res://Cenas/Banco.tscn")


func _on_Button_Status_pressed():
	get_tree().change_scene("res://Cenas/Status.tscn")


func _on_Button_Task_pressed():
	get_tree().change_scene("res://Cenas/Task.tscn")


func _on_Button_Crditos_pressed():
	get_tree().change_scene("res://Cenas/Créditos.tscn")


func _on_Button_EduFin_pressed():
	get_tree().change_scene("res://Cenas/EduFin.tscn")


func _on_Button_Volume_pressed():
	pass # Replace with function body.


func _on_Button_Sair_pressed():
	pass # Replace with function body.
