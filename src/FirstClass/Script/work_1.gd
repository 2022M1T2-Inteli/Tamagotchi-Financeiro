extends Node2D

func _ready():
	pass




func _on_Button_1_pressed():
	$Area2D2/Job1.visible = true
	$Area2D2/CargosTrabalho.visible = false
	$Area2D2/button_job1_1.visible = true
	$Area2D2/button_job1_2.visible = true
	$Area2D2/button_job1_3.visible = true
	$Area2D2/Button_1.visible = false


func _on_Button_job1_1_pressed():
	Global.player_job = 1
	$Area2D2/Job1.visible = false
	$Area2D2/Player_certo.visible = true
	$Area2D2/FundoPreto.visible = false
	$Area2D2/button_job1_1.visible = false
	$Area2D2/button_job1_2.visible = false
	$Area2D2/button_job1_3.visible = false

func _on_Button_job1_2_pressed():
	Global.player_job = 2
	$Area2D2/Job1.visible = false
	$Area2D2/Player_certo.visible = true
	$Area2D2/FundoPreto.visible = false
	$Area2D2/button_job1_1.visible = false
	$Area2D2/button_job1_2.visible = false
	$Area2D2/button_job1_3.visible = false
func _on_button_job1_3_pressed():
	Global.player_job = 3
	$Area2D2/Job1.visible = false
	$Area2D2/Player_certo.visible = true
	$Area2D2/FundoPreto.visible = false
	$Area2D2/button_job1_1.visible = false
	$Area2D2/button_job1_2.visible = false
	$Area2D2/button_job1_3.visible = false
	


func _on_Area2D3_body_entered(body):
	if Global.player_job > 0: 
		Global.current_scene = "res://Scenes/work_1.0.tscn"
		get_tree().change_scene(Global.current_scene)
