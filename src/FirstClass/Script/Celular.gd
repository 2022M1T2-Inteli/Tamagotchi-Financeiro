extends Node2D

func _ready():
	get_node("TextureProgress").value = Global.happiness
	$RichTextLabel.set_bbcode(str(Global.happiness) + "%")
	$knownledge.text = str (Global.knowledge)

func _on_Button_Map_pressed():
	get_tree().change_scene("res://Cellphone/Map.tscn")


func _on_Button_Bank_pressed():
	get_tree().change_scene("res://Cellphone/Bank.tscn")


func _on_Button_Credits_pressed():
	get_tree().change_scene("res://Cellphone/Credits.tscn")


func _on_Button_EduFin_pressed():
	get_tree().change_scene("res://Cellphone/EduFin.tscn")


func _on_Button_Volume_pressed():
	pass # Replace with function body.


func _on_Button_Exit_pressed():
	get_tree().change_scene(Global.current_scene)


func _on_Button_exit_left_side_pressed():
	get_tree().change_scene(Global.current_scene)


func _on_Button_exit_right_pressed():
	get_tree().change_scene(Global.current_scene)


func _on_Button_Cellphone_Bottom_pressed():
	get_tree().change_scene(Global.current_scene)


func _on_Button_Cellphone_Top_pressed():
	get_tree().change_scene(Global.current_scene)
