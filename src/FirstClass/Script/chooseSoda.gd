extends Node2D

func _on_rigthSoda_pressed():
	get_tree().change_scene("res://Scenes/rightSodaChoose.tscn")
	
func _on_wrongSoda_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")

func _on_wrongSoda2_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
