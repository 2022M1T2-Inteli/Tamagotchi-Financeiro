extends Node2D

# Functions for transition between Status app and cellphone main page

func _ready():
	pass # Replace with function body.

func _on_Button_health_pressed():
	get_tree().change_scene("res://Cellphone/health.tscn")


func _on_Button_happiness_pressed():
	get_tree().change_scene("res://Cellphone/happiness.tscn")


func _on_Button_knowledge_pressed():
	get_tree().change_scene("res://Cellphone/Knowledge.tscn")


func _on_Button_exit_status_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")
