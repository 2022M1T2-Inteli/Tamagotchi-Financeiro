extends Node2D

# Script for the exclamation sign

func _ready():
	$"/root/Musicfx".stop()
	if(Global.school):
		$Excla.visible = false
	#pass # Replace with function body.

func _process(delta):
		$Excla/AnimationPlayer.play("exclam")
	
