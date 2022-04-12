extends Node2D

# Script for the exclamation sign
# This script enables the text advance and
# the visibility of certain elements
# based on attendancy of the daily class

func _ready():
	$"/root/Ambient".stop()
	if(Global.school):
		$Excla.visible = false
	#pass # Replace with function body.

func _process(delta):
		$Excla/AnimationPlayer.play("exclam")
		$Goalscene2/Sprite2/setapreta.play("setapreta")
		
		if !Global.university1:
			$Player_certo.visible = false
			$Button.visible = true
			$Button/FundoPreto.visible = true
			$Button/UniversityDynamics.visible = true
		else:
			pass

func _on_Button_pressed():
	$Player_certo.visible = true
	$Button.visible = false
	$Button/FundoPreto.visible = false
	$Button/UniversityDynamics.visible = false
	Global.university1 = true
