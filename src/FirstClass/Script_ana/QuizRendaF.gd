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


func _on_Button_pressed(): #certo
	get_tree().change_scene("res://Scenes_ana/ErrouquizRendaF.tscn")


func _on_Button2_pressed(): #errado
	get_tree().change_scene("res://Scenes/Quiz_right_answer.tscn")


func _on_Button3_pressed(): #errado
	get_tree().change_scene("res://Scenes_ana/ErrouquizRendaF.tscn")
