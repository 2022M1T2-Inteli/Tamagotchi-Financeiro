extends Control



var dialog = [
	'POUPANÇA \n Poupança é um investimento de renda fixa simples e acessível que é isento de custos - os rendimentos não pagam Imposto de Renda, mesmo que tenham que ser declarados anualmente.',
	'Liquidez diária:\n Os resgates de suas aplicações podem ser realizados a qualquer momento com muita facilidade.',
	'Aniversário da poupança: \n Embora tenha liquidez diária, a remuneração da caderneta é creditada mensalmente apenas na sua data de “aniversário”, que é o dia do mês em que o depósito foi feito.',
	'Assim, uma aplicação realizada no dia 10 de um determinado mês só fará jus à remuneração no dia 10 do mês seguinte. Se resgatar o dinheiro no dia 9, perde-se todo o retorno do período.',
	'Destino dos recursos: \n 65% dos recursos aplicados na caderneta são destinados ao mercado imobiliário (para os bancos concederem financiamentos a quem quer comprar um imóvel próprio).',
	'Rendimento: \n O rendimento altera conforme o patamar em que se encontra a taxa Selic (indicador mencionado na aula anterior) - em que uma Selic alta leva a rendimentos mais altos, e vice-versa.',
	'Importante: \n Mesmo sendo um procedimento simples e seguro (tem garantia FGC), e sem aplicação mínima, o rendimento da Poupança está ficando cada vez mais baixo e próximo à inflação.',
	'OBSERVAÇÃO: \n Adotaremos 0.5% de rendimento mensal fixo no jogo. \n FÓRMULA RENDIMENTO: M = C * (1 + i)^t \n - M = Montante; \n - C = Capital inicial; \n i = taxa de juros \n - t = tempo (em meses).'
	]


var dialog_index = 0
var finished = false

func _ready():
	load_dialog()

func _process(delta):
	$"Button".visible = finished
	$Button/AnimationPlayer.play("IDLE")
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()

func load_dialog():
	if dialog_index < dialog.size():
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		print(dialog[dialog_index])
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:

		queue_free()
		get_tree().change_scene("res://Scenes/Quizbutton.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true
