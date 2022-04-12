extends Node2D

var count = 4

func _ready():
	$Timer.start()

#function to new mesages appers
func _on_Timer_timeout():
	if(count > 8):
		$Timer.stop()
		$Button.visible = true
	if(count <= 8):
		get_node("Story" + str(count)).visible = true
		get_node("Timer").start()
		count += 1

#button to change to taxi scene
func _on_Button_pressed():
	if($Button.visible == true):
		get_tree().change_scene("res://Scenes/taxi.tscn")
