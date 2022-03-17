extends Node2D


func _ready():
	$RichTextLabel.text = str (Global.recordsPrice) 


func _on_Button_pressed():
	get_tree().change_scene("res://Cellphone/Bank.tscn")
