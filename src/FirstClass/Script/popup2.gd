extends Control

# Script that enables the email pop-up

var array = ["1.Vá ate a faculdade e veja sua aula de hoje!\n\n\n2.Conheça o mercado!","1.Vá ate a faculdade e veja sua aula de hoje!\n\n\n2 Conheça o Banco!"]

func _on_question_button_pressed() -> void:
	print("clicou")
	$Panel.visible = true
	$close_button.visible = true
	$Panel/AnimationPlayer.play("popup")
	get_node("Panel/Any_tasks_active").text = array[Global.day-1]



func _on_close_button_pressed() -> void:
	print("não clicou")
	$Panel/AnimationPlayer.play_backwards("popup")
	$close_button.visible = false
