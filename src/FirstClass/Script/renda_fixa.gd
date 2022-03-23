extends Node2D

func _ready():
	pass # Replace with function body.


func _on_Button1_pressed():
	get_tree().change_scene("res://Scenes/savings - deposit.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/CDI_2.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/tesouro_direto.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/debênture.tscn")

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")
