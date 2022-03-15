extends Node2D

func _on_Button_pressed():
	Global.actions -= 1
	get_tree().change_scene("res://Scenes/marketListShopMilk.tscn")
