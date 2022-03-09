extends Control

# Script that enables the email pop-up

func _on_question_button_pressed() -> void:
	print("clicou")
	$Panel.visible = true
	$close_button.visible = true
	$Panel/AnimationPlayer.play("popup")

func _on_close_button_pressed() -> void:
	print("não clicou")
	$Panel/AnimationPlayer.play_backwards("popup")
	$close_button.visible = false
