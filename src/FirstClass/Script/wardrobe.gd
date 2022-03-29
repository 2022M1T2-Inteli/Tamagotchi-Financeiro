extends Area2D


var wardrobe = preload ("res://Scenes/wardrobe.tscn")
var new_node 

func _ready():
	pass # Replace with function body.

#func hide_joystick():
#	for node in get_node("../Joystick").get_children():
#		node.visible = false
#
#func show_joystick():
#	for node in get_node("../Joystick").get_children():
#		node.visible = true


func _on_wardrobe_body_entered(body):
	if body.name == "Player_certo" && (StoreManagement.products[2][0] || StoreManagement.products[2][1] || StoreManagement.products[2][2] || StoreManagement.products[2][3] || StoreManagement.products[2][4]):
		get_tree().change_scene("res://Scenes/wardrobe.tscn")
	else:
		pass
#		hide_joystick()
#		get_tree().paused = true
#		new_node = wardrobe.instance()
#		new_node.global_position = Vector2.ZERO
#		add_child(new_node)
#		new_node.global_position = Vector2(0, 0)


#func _on_wardrobe_body_exited(body):
#	show_joystick()
