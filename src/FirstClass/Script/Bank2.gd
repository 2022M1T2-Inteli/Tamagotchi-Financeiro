extends Node2D

func _process(delta):
	$Exc/AnimationPlayer.play("excla2")
	
func _ready():
	$Player_certo.position = Vector2(-980,200)


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
