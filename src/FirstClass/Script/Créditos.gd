extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_Exit_Credits_pressed():
	Global.button = true
	self.queue_free()
	#get_tree().change_scene("res://Cellphone/Cellphone.tscn")
