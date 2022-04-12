extends Node2D

func _ready():
	$Exc/AnimationPlayer.play("excla2")

#iniciate storry
func _on_Area2D_body_entered(body):
	$Exc.visible = false
	$Story2.visible = true
	$FundoPreto.visible = true
	$Player_certo.visible = false
	$Timer.start()

#button to change the scene
func _on_Timer_timeout():
	$Button.visible = true


func _on_Button_pressed():
	if($Button.visible == false):
		pass # Replace with function body.
	else:
		get_tree().change_scene("res://Scenes/cellphone_story.tscn")
