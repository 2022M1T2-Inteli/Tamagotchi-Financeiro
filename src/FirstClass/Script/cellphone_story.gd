extends Node2D

func _ready():
	$Story4.visible = false
	$Story5.visible = false
	$Story6.visible = false
	$Story7.visible = false
	$Story8.visible = false
	story1()

func story1():
	$Timer.start()
	
func _on_Timer_timeout():
	$Story4.visible = true
	story2()

func story2():
	$Timer2.start()

func _on_Timer2_timeout():
	$Story5.visible = true
	story3()
	
func story3():
	$Timer3.start()

func _on_Timer3_timeout():
	$Story6.visible = true
	story4()

func story4():
	$Timer4.start()

func _on_Timer4_timeout():
	$Story7.visible = true
	story5()

func story5():
	$Timer5.start()

func _on_Timer5_timeout():
	$Story8.visible = true
	story6()

func story6():
	$Timer6.start()

func _on_Timer6_timeout():
	get_tree().change_scene("res://Scenes/taxi.tscn")
