extends MenuButton

# Script to access the Cellphone menu

func _ready():
	pass # Replace with function body.

func _on_Button_cellphone_pressed():
#	var currentX = get_tree().get_node("Player_certo").position.x
#	var currentY = get_tree().get_node("Player_certo").position.y
#	Global.change_position(currentX,currentY)
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")
	pass
