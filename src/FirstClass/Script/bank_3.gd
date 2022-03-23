extends Node2D

func _ready():
	pass # Replace with function body.
			
func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/Bank.tscn")

func _on_Button_renda_fixa_pressed():
	get_tree().change_scene("res://Scenes/renda_fixa.tscn")


func _on_Button_fundos_pressed():
	get_tree().change_scene("res://Scenes/fundos.tscn")


func _on_Button_variavel_pressed():
	get_tree().change_scene("res://Scenes/variavel.tscn")
