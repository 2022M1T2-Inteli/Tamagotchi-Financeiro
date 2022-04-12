extends Node2D

# Soundeffect is played and it returns to the market ambienece

func _ready():
	$winfx.play()

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/marketListShopAfterRice.tscn")
