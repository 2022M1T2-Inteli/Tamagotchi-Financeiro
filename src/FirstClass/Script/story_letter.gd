extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Area2D_body_entered(body):
	$Story2.visible = true
	$FundoPreto.visible = true
	$Player_certo.visible = false
	$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/cellphone_story.tscn")
