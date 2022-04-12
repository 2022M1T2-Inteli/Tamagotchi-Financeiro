extends Node2D

#exclamation to give the player an orientation
func _ready():
	$Excla/AnimationPlayer.play("RESET")
	$Excla2.visible = false
	$"/root/Ambient".stop()
	$Area2D/setapreta9/setapreat9.play("seta9")
	if Global.excla4 == true:
		$Excla.visible = false

#functions to navegate into job options
func _on_Button_1_pressed():
	$Excla.visible = false
	$Excla2.visible = true
	$Area2D2/Job1.visible = true
	$Excla2/AnimationPlayer.play("RESET")
	$Area2D2/CargosTrabalho.visible = false
	$Area2D2/button_job1_1.visible = true
	$Area2D2/button_job1_2.visible = true
	$Area2D2/button_job1_3.visible = true
	$Area2D2/Button_1.visible = false


func _on_Button_job1_1_pressed():
	$Excla.visible = false
	$Excla2.visible = true
	Global.player_job = 1
	$Area2D2/Job1.visible = false
	$Area2D2/Player_certo.visible = true
	$Area2D2/FundoPreto.visible = false
	$Area2D2/button_job1_1.visible = false
	$Area2D2/button_job1_2.visible = false
	$Area2D2/button_job1_3.visible = false

func _on_Button_job1_2_pressed():
	$Excla.visible = false
	$Excla2.visible = true
	Global.player_job = 2
	$Area2D2/Job1.visible = false
	$Area2D2/Player_certo.visible = true
	$Area2D2/FundoPreto.visible = false
	$Area2D2/button_job1_1.visible = false
	$Area2D2/button_job1_2.visible = false
	$Area2D2/button_job1_3.visible = false
func _on_button_job1_3_pressed():
	$Excla.visible = false
	$Excla2.visible = true
	Global.player_job = 3
	$Area2D2/Job1.visible = false
	$Area2D2/Player_certo.visible = true
	$Area2D2/FundoPreto.visible = false
	$Area2D2/button_job1_1.visible = false
	$Area2D2/button_job1_2.visible = false
	$Area2D2/button_job1_3.visible = false

	#functions to player enter into his job, speding his energy
func _on_Area2D3_body_entered(body):
	if(body.name == "Player_certo"):
		
		if (Global.player_job == 1 && Global.actions >= 1) || (Global.player_job == 4 && Global.actions >= 1) || (Global.player_job ==7 && Global.actions >= 1) || (Global.player_job ==10 && Global.actions >= 1) || (Global.player_job ==13 && Global.actions >= 1):
			Global.actions -=1 
			Global.current_scene = "res://Scenes/work_1.0.tscn"
			get_tree().change_scene(Global.current_scene)
		elif (Global.player_job == 2 && Global.actions >= 2) || (Global.player_job == 5 && Global.actions >= 2) || (Global.player_job ==8 && Global.actions >= 2) || (Global.player_job ==11 && Global.actions >= 2) || (Global.player_job ==14 && Global.actions >= 2):
			Global.actions -=2
			Global.current_scene = "res://Scenes/work_1.0.tscn"
			get_tree().change_scene(Global.current_scene)
		elif (Global.player_job == 3 && Global.actions >= 3) || (Global.player_job == 6 && Global.actions >= 3) || (Global.player_job ==9 && Global.actions >= 3) || (Global.player_job ==12 && Global.actions >= 3) || (Global.player_job ==15 && Global.actions >= 3):
			Global.actions -=3 
			Global.current_scene = "res://Scenes/work_1.0.tscn"
			get_tree().change_scene(Global.current_scene)
			
