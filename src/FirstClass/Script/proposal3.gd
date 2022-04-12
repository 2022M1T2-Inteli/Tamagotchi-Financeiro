extends Button

# It goes to the cash register

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/cashRegisterMarket.tscn")
