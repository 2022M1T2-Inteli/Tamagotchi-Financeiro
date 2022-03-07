extends Area2D

# onready var dialog = get_node("Control2/dialogBox") # FIXME: Node not found

func _on_Detector_body_entered(body):
	body.name == "Player_certo"
	get_tree().change_scene("res://Scenes/dialogBoxTest.tscn")
	#$Control2.visible = true


func _on_Detector_body_exited(body):
	body.name == "Player_certo"
	#$Control2.visible = false
