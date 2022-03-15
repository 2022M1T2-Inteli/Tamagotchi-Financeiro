extends Node2D

#timer to go back to de bedroom
func _on_Timer_timeout():
	Global.change_position(1175,678)
	get_tree().change_scene("res://Scenes/background_bedroom_nigth.tscn")
