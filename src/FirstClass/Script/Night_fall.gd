extends Node2D

#timer to go back to de bedroom
func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/background_bedroom_nigth.tscn")
