extends Node2D

func _on_rigthSoda_pressed():
	Global.total += 4
	Global.products[2] = "res://assets/sodaPurple.png"
	get_tree().change_scene("res://Scenes/rightSodaChoose.tscn")

func _on_wrongSoda_pressed():
	Global.total += 2
	Global.products[2] = "res://assets/sodaRed.png"
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
	
func _on_wrongSoda2_pressed():
	Global.total += 2.30
	Global.products[2] = "res://assets/sodaGreen.png"
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
