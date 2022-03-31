extends Node2D

var celltest
var new_node 

func _ready():
	get_node("TextureProgress").value = Global.happiness
	$RichTextLabel.set_bbcode(str(Global.happiness) + "%")
	$knownledge.bbcode_text = str ("[center]", (Global.knowledge))

func _on_Button_Map_pressed():
	celltest = preload("res://Cellphone/Map.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
	#get_tree().change_scene("res://Cellphone/Map.tscn")


func _on_Button_Bank_pressed():
	celltest = preload("res://Cellphone/Bank.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
	#get_tree().change_scene("res://Cellphone/Bank.tscn")


func _on_Button_Credits_pressed():
	celltest = preload("res://Cellphone/Credits.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
	#get_tree().change_scene("res://Cellphone/Credits.tscn")


func _on_Button_EduFin_pressed():
	celltest = preload("res://Cellphone/EduFin.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)
	#get_tree().change_scene("res://Cellphone/EduFin.tscn")


func _on_Button_Volume_pressed():
	pass # Replace with function body.


func _on_Button_Exit_pressed():
	get_tree().paused = false
	self.queue_free()
	#get_tree().change_scene(Global.current_scene)


func _on_Button_exit_left_side_pressed():
	get_tree().paused = false
	self.queue_free()
	#get_tree().change_scene(Global.current_scene)


func _on_Button_exit_right_pressed():
	get_tree().paused = false
	self.queue_free()
	#et_tree().change_scene(Global.current_scene)


func _on_Button_Cellphone_Bottom_pressed():
	get_tree().paused = false
	self.queue_free()
	#get_tree().change_scene(Global.current_scene)


func _on_Button_Cellphone_Top_pressed():
	get_tree().paused = false
	self.queue_free()
	#get_tree().change_scene(Global.current_scene)
