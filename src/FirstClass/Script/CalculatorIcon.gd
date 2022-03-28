extends Node2D


var calculator = preload("res://Scenes/Calculator.tscn")
var new_node 


func _ready():
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().paused = true
	new_node = calculator.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
	$CalculatorIcon.visible = false


func _on_certo_pressed():
	get_tree().change_scene("res://Scenes/Quiz_right_answer.tscn")


func _on_errado_pressed():
	get_tree().change_scene("res://Scenes/Errouquiz.tscn")
