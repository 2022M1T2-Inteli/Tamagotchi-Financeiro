extends Area2D

func _ready():
	pass # Replace with function body.

func _on_Detector_body_entered(body):
	#stops exclamation:
	Global.excla2 = true
	if(body.name == "Player_certo"):
		get_tree().change_scene("res://Scenes/money_digital+physicist.tscn")



func _on_Detector_body_exited(body):
	if(body.name == "Player_certo"):
		pass
	
