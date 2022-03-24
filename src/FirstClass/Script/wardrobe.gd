extends Area2D


var celltest = preload ("res://Scenes/wardrope.tscn")
var new_node 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func hide_joystick():
	for node in get_node("../Joystick").get_children():
		node.visible = false

func show_joystick():
	for node in get_node("../Joystick").get_children():
		node.visible = true

func _on_wardrobe_body_entered(body):
	if body.name == "Player_certo":
		hide_joystick()
		get_tree().paused = true
		new_node = celltest.instance()
		new_node.global_position = Vector2.ZERO
		add_child(new_node)
		new_node.global_position = Vector2(0, 0)
