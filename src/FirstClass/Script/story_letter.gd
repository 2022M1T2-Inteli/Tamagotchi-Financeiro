extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.visible = false
	$Exc/AnimationPlayer.play("excla2")

func _on_Area2D_body_entered(body):
	$Exc.visible = false
	$Story2.visible = true
	$FundoPreto.visible = true
	$Player_certo.visible = false
	$Timer.start()

func _on_Timer_timeout():
	$Button.visible = true

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/cellphone_story.tscn")
