extends Control

var dialog = [
	'A renda variável é como o oposto da renda fixa. Ela apresenta diversas vantagens, como: \n * Possibilidade de se obter um retorno maior mais rápido; \n * Base diária; \n * Alta liquidez; \n * Variedade grande de ativos no mercado.',
	'Porém, ela apresenta também diversas desvantagens, como: \n\n * Valores mínimos de investimento estabelecidos; \n\n * O risco mais alto de não se obter retorno;',
	'* A alta volatilidade dos mercados; \n\n * O fato de que o investidor entra no capital do emissor, ou seja, acaba dependendo direta ou indiretamente da valorização dos papéis da companhia no período do investimento, a qual é impossível prever de antemão.',
	'Os tipos de investimento em renda variável são: \n Ações, Fundos Imobiliários (FIIs), ETFs, Opções, Câmbio, Futuros, Fundos de investimento e as Criptomoedas. \n\n A maneira mais conhecida de se investir nessa renda são as ações, que são a menor parcela do capital de uma empresa.',
	'As duas formas de se lucrar com ações são: \n\n * Com a distribuição de dividendos (que são uma parte do lucro que as empresas distribuem aos acionistas); \n\n * Por meio da valorização dos papéis na bolsa de valores.'
	]


var dialog_index = 0
var finished = false

func _ready():
	load_dialog()

func _process(delta):
	$"Button".visible = finished
	$Button/AnimationPlayer.play("IDLE")
	#if Input.is_action_just_pressed("ui_accept"):
		#load_dialog()

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
