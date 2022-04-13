extends Node2D


var celltest
var new_node 

func _ready():
	get_node("TextureProgress").value = Global.happiness
	$RichTextLabel.set_bbcode(str(Global.happiness) + "%")
	$knownledge.bbcode_text = str ("[center]", (Global.knowledge))

func _process(delta):
	if (Global.button):
		$Button_Credits.disabled = false
		$Button_EduFin.disabled = false
		$Button_Bank.disabled = false
		$Button_Map.disabled = false
		$Button_Exit.disabled = false
		$Cellphone.visible = true 

func _on_Button_Map_pressed():
	get_tree().paused = false
	$Button_Credits.disabled = true
	$Button_EduFin.disabled = true
	$Button_Bank.disabled = true
	$Button_Map.disabled = true
	$Button_Exit.disabled = true
	$Cellphone.visible = false
	Global.button = false
	celltest = preload("res://Cellphone/Map.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)


func _on_Button_Bank_pressed():
	get_tree().paused = false
	$Button_Credits.disabled = true
	$Button_EduFin.disabled = true
	$Button_Bank.disabled = true
	$Button_Map.disabled = true
	$Button_Exit.disabled = true
	celltest = preload("res://Cellphone/Bank.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)


func _on_Button_Credits_pressed():
	get_tree().paused = false
	$Button_Credits.disabled = true
	$Button_EduFin.disabled = true
	$Button_Bank.disabled = true
	$Button_Map.disabled = true
	$Button_Exit.disabled = true
	celltest = preload("res://Cellphone/Credits.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)


func _on_Button_EduFin_pressed():
	get_tree().paused = false
	$Button_Credits.disabled = true
	$Button_EduFin.disabled = true
	$Button_Bank.disabled = true
	$Button_Map.disabled = true
	$Button_Exit.disabled = true
	celltest = preload("res://Cellphone/EduFin.tscn")
	new_node = celltest.instance()
	new_node.global_position = Vector2.ZERO
	add_child(new_node)
	new_node.global_position = Vector2(0, 0)

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
