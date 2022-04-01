extends Node2D

# Functions for transition between EduFin app and cellphone main page

func _ready():
	pass # Replace with function body.

func _on_Button_EduFin_pressed():
	Global.button = true
	self.queue_free()
