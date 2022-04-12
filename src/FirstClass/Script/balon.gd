extends Area2D

# Script that change from the Steet Scene to the Park
# It allows the player to enter the Park minigame

func _on_balon_body_entered(body):
	get_tree().change_scene("res://parkgoingupscene.tscn")
#	if body.name == "Player_certo":
#		$Player_certo.visible = false
		
		
		
		
		
		
		
		
		
		
		#get_tree().change_scene("res://Scenes/Game.tscn")
