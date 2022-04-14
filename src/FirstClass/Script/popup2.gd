extends Control

# Script that enables the email pop-up
#var that defines the tasks for each  day
var tasks = ["\n\n\n2.  Conheça o mercado!","\n\n\n2.  Conheça o Banco e invista!","\n\n\n2.  Confira os investimentos feitos no banco !","","","\n\n\n2.  se quiser, retire os investimentos feitos no banco !"]
var monthly_expenses = 999
var matrix = []

#change the taks during the day
func _ready():
	for x in range(40):
		matrix.append([])
		for y in range(3):
			matrix[x].append("")
	for x in range(5):
		matrix[x][0] = "1. Vá até a faculdade e veja sua aula de hoje!"
		matrix[x][1] = tasks[x]
		matrix[x][2] = "\n\n\n3. Explore o mapa!"

#function no call the pop-up
func _on_question_button_pressed() -> void:
	get_node("Panel/Any_tasks_active").text = ""
	$Panel.visible = true
	$close_button.visible = true
	$Panel/AnimationPlayer.play("popup")
	$question_button/AnimationPlayer.stop()
	$question_button.visible = true
	$question_button/AnimationPlayer.play("RESET")
	Global.email = true
	
	#cheks if player went to university and change the task
	if !Global.school:
		get_node("Panel/Any_tasks_active").text += matrix[Global.day-1][0]
	else:
		get_node("Panel/Any_tasks_active").text += "•Você já foi à faculdade hoje! Volte amanhã para mais conteúdos"
	
	get_node("Panel/Any_tasks_active").text += matrix[Global.day-1][1]#tasks[Global.day-1]
	get_node("Panel/Any_tasks_active").text += matrix[Global.day-1][2]
	
	#function to adivice the player if his money or happines is low
	if Global.money + Global.digital_money <= monthly_expenses:
		get_node("Panel/Any_tasks_active").text += "\n\n•Seus ganhos mensais estão iguais aos gastos mensais. Cuidado!"	
	if Global.happiness <= 30:
		get_node("Panel/Any_tasks_active").text += "\n\n•Seu bem-estar está muito baixo! Cuidado, voce perdera energia!"	

#function for close the pop-up
func _on_close_button_pressed() -> void:
	Global.email = false
	$Panel/AnimationPlayer.play_backwards("popup")
	$close_button.visible = false
	get_node("Panel/Any_tasks_active").text = ""

#starts the exclamation when the email is pressed:
func _on_AnimationPlayer_animation_started(anim_name):
	Global.excla = true
