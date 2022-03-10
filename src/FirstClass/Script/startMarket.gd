extends Node2D

func _on_Button_pressed():
	Global.actions -= 1
	get_tree().change_scene("res://Scenes/market_2.tscn")
	Global.are_actions_over()
