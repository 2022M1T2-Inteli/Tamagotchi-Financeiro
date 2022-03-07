extends Node2D



func _on_RIGHT_pressed():
	Input.action_press("ui_right")
func _on_RIGHT_released():
	Input.action_release("ui_right")
	
func _on_UP_pressed():
	Input.action_press("ui_up")
func _on_UP_released():
	Input.action_release("ui_up")
	
func _on_LEFT_pressed():
	Input.action_press("ui_left")
func _on_LEFT_released():
	Input.action_release("ui_left")

func _on_DOWN_pressed():
	Input.action_press("ui_down")
func _on_DOWN_released():
	Input.action_release("ui_down")

