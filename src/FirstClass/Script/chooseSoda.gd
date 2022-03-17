extends Node2D

func _on_rigthSoda_pressed():
	get_tree().change_scene("res://Scenes/rightSodaChoose.tscn")
	Global.total += 4

func _on_wrongSoda_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
	Global.total += 2
	
func _on_wrongSoda2_pressed():
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
	Global.total += 2.30
