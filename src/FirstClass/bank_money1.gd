extends Area2D

func _ready():
	pass 

func _on_Area2D_body_entered(body):
	if (body.name == "Player_certo"):
		
		if Global.bank == 0 :
			get_tree().change_scene("res://Scenes/savings.tscn")
			Global.bank = 1
		else: 
			get_tree().change_scene("res://Scenes/Choosemilk.tscn")
