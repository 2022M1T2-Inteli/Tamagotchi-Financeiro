extends MenuButton

# Script to access the Cellphone menu

func _ready():
	pass # Replace with function body.

func _on_Button_cellphone_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")
