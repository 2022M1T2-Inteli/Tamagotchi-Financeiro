extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		Global.position.x = 3700
		Global.position.y = 650
		get_tree().change_scene(Global.current_scene)
