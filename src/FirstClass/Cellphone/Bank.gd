extends Node2D

# Functions for transition between bank app and cellphone main page
var celltest = preload ("res://Cellphone/recordsBank.tscn")
var new_node 

func _ready():
	pass # Replace with function body.

func _on_Button_exit_bank_pressed():
	Global.button = true
	self.queue_free()


func _on_Button_exit_bank_left_pressed():
	Global.button = true
	self.queue_free()


func _on_Button_exit_bank_right_pressed():
	Global.button = true
	self.queue_free()


func _on_Button_pressed():
	Global.button = true
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
	self.queue_free()
