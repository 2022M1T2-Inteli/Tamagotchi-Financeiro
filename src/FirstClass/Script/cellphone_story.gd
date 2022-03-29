extends Node2D

var time : int = 0

func _ready():
	$Story4.visible = false
	$Story5.visible = false
	$Story6.visible = false
	$Story7.visible = false
	$Story8.visible = false
	$Button.visible = false
	$Timer.start()
	
func _on_Timer_timeout():
	if time == 0 :
		$Story4.visible = true
		time += 1
		$Timer2.start()

func _on_Timer2_timeout():
	if time == 1 :
		$Story5.visible = true
		time += 1
		$Timer3.start()

func _on_Timer3_timeout():
	if time == 2 :
		$Story6.visible = true
		time += 1
		$Timer4.start()

func _on_Timer4_timeout():
	if time == 3 :
		$Story7.visible = true
		time += 1
		$Timer5.start()

func _on_Timer5_timeout():
	if time == 4 :
		$Story8.visible = true
		time += 1
		$Button.visible = true

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/taxi.tscn")
