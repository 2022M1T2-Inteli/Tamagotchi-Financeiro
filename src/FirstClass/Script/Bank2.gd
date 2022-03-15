extends Node2D

func _process(delta):
	$Exc/AnimationPlayer.play("excla2")
	
func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
