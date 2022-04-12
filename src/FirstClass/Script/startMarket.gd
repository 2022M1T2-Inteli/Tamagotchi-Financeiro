extends Node2D

# Code to verify if the player is able to
# play the minigame. If it is, then it will
# proceed. Else, it will return to the front
# of the market 

func _ready():
	#$"/root/Musicfx".stop()
	pass
	
func _on_Button_pressed():
	if(Global.money >= 32.75):
		get_tree().change_scene("res://Scenes/marketListShopMilk.tscn")
	else:
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
