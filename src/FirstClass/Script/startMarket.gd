extends Node2D

func _ready():
	$"/root/Musicfx".stop()
	
func _on_Button_pressed():
	Global.actions -= 1
	if(Global.money >= 32.75):
		get_tree().change_scene("res://Scenes/marketListShopMilk.tscn")
	else:
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
