extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Airplane/Airplane.play("Airplane")
	$Helicopoter/Helicopter.play("Helicopter")
	$Taxi/Taxi.play("Taxi")
	$Balon/Balon.play("Balon")
	
func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/Game.tscn")
	
