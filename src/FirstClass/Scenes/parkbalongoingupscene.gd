extends Node2D


func _ready():
	pass
	$Taxi/Taxi.play("Taxii")
	$helicopter/helicopter.play("Helicopter")
	$Balon/Balon.play("Balon")
	$Airplane/Airplane.play("Airplane")
	
func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/Game.tscn")
