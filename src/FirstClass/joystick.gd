extends Node2D

# Script for the touchpad
# This script enables the movement to the touchpad

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

func _ready():
	Input.action_release("ui_down")
	Input.action_release("ui_up")
	Input.action_release("ui_left")
	Input.action_release("ui_right")
