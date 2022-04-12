extends Control

# Code that is responsable for the content of a lesson.
# It makes the logic of text pass and dialog blocks 
# In particular, this script refers to Indicators

var dialog = [
	'Bom dia! Você está pronto para aprender sobre Indicadores do Mercado Financeiro?',
	'INDICADORES DO MERCADO \n Quando se trata de Renda Fixa, a remuneração desses investimentos varia de acordo com alguns indicadores, que possibilitam um norteamento do investidor desde o momento da aplicação.',
	'1. Taxa Selic\n - Taxa básica de juros da economia brasileira;\n - Rendimento da poupança está diretamente ligado à ela.',
	'2. Taxa do CDI \n - Certificado de depósito interfinanceiro.\n  - Média dos juros das operações de empréstimo de curto prazo realizadas diariamente pelos bancos entre si;\n - Rendimento das CDBs está diretamente ligado à ela - costumam oferecer um percentual do CDI como remuneração.',
	'3. Taxa referencial (TR)\n  -Corrige o rendimento da poupança;\n  - É calculada a partir das médias das taxas dos CDBs prefixados. \n - Tem valor igual a zero desde 2017.'
	]


var dialog_index = 0
var finished = false

func _ready():
	load_dialog()

func _process(delta):
	$"Button".visible = finished
	$Button/AnimationPlayer.play("IDLE")
	

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
		get_tree().change_scene("res://Scenes_ana/QuizIndicadores.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true


func _on_Button_pressed():
	load_dialog()
