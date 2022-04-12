extends MenuButton

var celltest = preload ("res://Cellphone/Cellphone.tscn")
var new_node 

#function to change player to cellphone scene 
func _on_Button_cellphone_pressed():
	if(!Global.transition):
		get_tree().paused = true
		new_node = celltest.instance()
		new_node.global_position = Vector2.ZERO
		add_child(new_node)
		new_node.global_position = Vector2(0, 0)
