extends Node2D

# Script for the exclamation sign

func _process(delta):
	$Excla/AnimationPlayer.play("exclam")
	
func _ready():
	pass # Replace with function body.
