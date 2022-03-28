extends Area2D


func _on_balon_body_entered(body):
	if body.name == "Player_certo":
		$Player_certo.visible = false
		
		
		
		
		
		
		
		
		
		
		#get_tree().change_scene("res://Scenes/Game.tscn")
