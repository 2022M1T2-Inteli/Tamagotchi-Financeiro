extends Node2D

# Stops ambience music from playing

func _ready():
	$"/root/Ambient".stop()
