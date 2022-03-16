extends Control

# Script that enables the email pop-up

var tasks = ["1.  Vá ate a faculdade e veja sua aula de hoje!\n\n\n2.  Conheça o mercado!","1.  Vá ate a faculdade e veja sua aula de hoje!\n\n\n2.  Conheça o Banco!"]
var monthly_expenses = 999

func _on_question_button_pressed() -> void:
	print("clicou")
	$Panel.visible = true
	$close_button.visible = true
	$Panel/AnimationPlayer.play("popup")
	get_node("Panel/Any_tasks_active").text = tasks[Global.day-1]
	if Global.money + Global.digital_money <= monthly_expenses:
		get_node("Panel/Any_tasks_active").text += "\n\n•Seus ganhos mensais estão iguais aos gastos mensais. Cuidado!"	



func _on_close_button_pressed() -> void:
	print("não clicou")
	$Panel/AnimationPlayer.play_backwards("popup")
	$close_button.visible = false
