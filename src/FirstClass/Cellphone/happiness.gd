extends Node2D

# Functions for set the visual part of happines value

func _ready():
	get_node("TextureProgress").value = Global.happiness
	$RichTextLabel.set_bbcode(str(Global.happiness) + "%")

# Functions for transition between happiness status and cellphone main page

func _on_Button_question_happiness_pressed():
	pass # Replace with function body.

func _on_Button_exit_happiness_pressed():
	get_tree().change_scene("res://Cellphone/Status.tscn")
