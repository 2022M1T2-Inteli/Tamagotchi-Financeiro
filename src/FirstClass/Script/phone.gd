extends MenuButton

var celltest = preload ("res://Cellphone/Cellphone.tscn")
var new_node 

func _ready():
	pass # Replace with function body.

func _on_Button_cellphone_pressed():
	get_tree().paused = true
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
