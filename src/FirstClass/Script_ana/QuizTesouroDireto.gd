extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_ButtonCerto_pressed():
	get_tree().change_scene("res://Scenes/Quiz_right_answer.tscn")


func _on_ButtonErrado_pressed():
	get_tree().change_scene("res://Scenes_ana/ErrouQuizTesouroDireto.tscn")
