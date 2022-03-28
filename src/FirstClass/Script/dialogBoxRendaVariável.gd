extends Control

var dialog = [
	'Bom dia! Você está pronto para aprender sobre Renda Variável e ações?',
	'Ao contrário da renda fixa, o retorno das aplicações em renda variável é imprevisível no momento do investimento. \n Vantagens: \n -Possibilidade de obter um retorno maior mais rápido; \n -Alta liquidez; \n -Grande variedade de ativos no mercado.',
	'Porém, ela apresenta algumas desvantagens, como: \n\n  -Valores mínimos de investimento estabelecidos; \n -Maior risco de obter prejuízos (pela alta volatilidade do mercado). ',
	#'-O fato de que o investidor entra no capital do emissor, ou seja, acaba dependendo direta ou indiretamente da valorização dos papéis da companhia no período do investimento, a qual é impossível prever de antemão.',
	'AÇÕES\n\n  A maneira mais conhecida de investir em renda variével é através da compra de ações. \n - Elas são a menor parcela do capital de uma empresa.',
	'As duas formas de lucrar com ações são: \n\n -Distribuição de dividendos (que são uma parte do lucro que as empresas distribuem aos acionistas); \n -Por meio da valorização dos papéis na bolsa de valores.',
	'Alguns outros exemplos de investimento em renda variável são: \n\n -Fundos Imobiliários (FIIs), ETFs, Fundos de investimento e as Criptomoedas, que serão aprofundados mais pra frente.' 
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
		get_tree().change_scene("res://Scenes/QuizbuttonRendaVariável.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true


func _on_buttonNextDialog_pressed():
	load_dialog()
