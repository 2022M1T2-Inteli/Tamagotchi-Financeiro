extends Control

# Code that is responsable for the content of a lesson.
# It makes the logic of text pass and dialog blocks 
# In particular, this script refers to Fix Income

var dialog = [
	'Bom dia! Você está pronto para aprender sobre Renda Fixa?',
	'RENDA FIXA \n \n Logo no inicio de investimentos de renda fixa, você já tem acesso a todas as condições de investimento: \n - como vai ser remunerado, qual o prazo do investimento, liquidez e riscos.',
	'Você pode "emprestar" seu dinheiro para:\n - Bancos (CDBs, poupança, LCI, LCA); \n - Governo (Tesouro Direto);\n - Empresas (Debêntures, CRI, CRA).',
	'Segurança: \n -São mais previsíveis que aplicações de renda variável (veremos mais à frente), mas não são livres de riscos. \n -Risco de crédito: perdas causadas pela incapacidade financeira da empresa emissora - chance de tomar um calote; \n -Risco de mercado: aumento do juros ou inflação.',
	'Proteção FGC - Fundo garantidor de créditos\n  \n - É uma garantia que retorna parte do investimento caso o investidor leve calote (mas é limitada).',
	'Tipos de investimentos de renda fixa\n  \n - Pré-fixado: os juros são fixos e o retorno é estabelecido no momento em que o investimento é feito;',
	'- Pós-fixado: a remuneração é atrelada a algum indicador de referência (como a Selic ou a taxa do CDI), mas o investidor não sabe a remuneração exata em reais;\n \n - Híbrido: uma parcela da remuneração é pré-fixada e a outra atrelada a alguma taxa.',
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
		get_tree().change_scene("res://Scenes_ana/QuizRendaF.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true


func _on_Button_pressed():
	load_dialog()
