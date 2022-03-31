extends Control

# Script that enables the email pop-up

var tasks = ["\n\n\n2.  Conheça o mercado!","\n\n\n2.  Conheça o Banco e invista!","\n\n\n2.  Confira os investimentos feitos no banco !","","","\n\n\n2.  se quiser, retire os investimentos feitos no banco !"]
var monthly_expenses = 999
var matrix = []

func _ready():
	for x in range(40):
		matrix.append([])
		for y in range(3):
			matrix[x].append("")
	for x in range(5):
		matrix[x][0] = "1. Vá até a faculdade e veja sua aula de hoje!"
		matrix[x][1] = tasks[x]
		matrix[x][2] = "\n\n\n3. Explore o mapa!"

func _on_question_button_pressed() -> void:
	get_node("Panel/Any_tasks_active").text = ""
	$Panel.visible = true
	$close_button.visible = true
	$Panel/AnimationPlayer.play("popup")
	$question_button/AnimationPlayer.stop()
	$question_button.visible = true
	
	if !Global.school:
		get_node("Panel/Any_tasks_active").text += matrix[Global.day-1][0]
	else:
		get_node("Panel/Any_tasks_active").text += "•Você já foi à faculdade hoje! Volte amanhã para mais conteúdos"
	
	get_node("Panel/Any_tasks_active").text += matrix[Global.day-1][1]#tasks[Global.day-1]
	get_node("Panel/Any_tasks_active").text += matrix[Global.day-1][2]
	
	if Global.money + Global.digital_money <= monthly_expenses:
		get_node("Panel/Any_tasks_active").text += "\n\n•Seus ganhos mensais estão iguais aos gastos mensais. Cuidado!"	
	if Global.happiness <= 30:
		get_node("Panel/Any_tasks_active").text += "\n\n•Seu bem-estar está muito baixo! Cuidado, voce perdera energia!"	

func _on_close_button_pressed() -> void:
	$Panel/AnimationPlayer.play_backwards("popup")
	$close_button.visible = false
	get_node("Panel/Any_tasks_active").text = ""
