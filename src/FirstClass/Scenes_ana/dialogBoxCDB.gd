extends Control

# Code that is responsable for the content of a lesson.
# It makes the logic of text pass and dialog blocks 
# In particular, this script refers to CDB

var dialog = [
	'Bom dia! Você está pronto para aprender sobre CDBs',
	'CDBs - Certificados de Depósitos Bancários\n \n -São investimentos de renda fixa emitidos por bancos; \n -Na maioria dos casos, quanto maior o valor mínimo do investimento, maior o rendimento.',
	'O CDB pode ser: \n 1. Pré-fixado: taxa de juros definida no momento da aplicação; \n 2. Pós-fixado: no momento da aplicação, é definido um indicador de referencia para a rentabilidade (% da taxa do CDI); \n 3. CDB híbrido: parte pré fixada e parte atrelada à inflação.',
	'-Não possui liquidez diária; \n -O papel tem uma data de vencimento em que o banco devolve o dinheiro; \n -Porém, muitos bancos oferecem uma liquidez diária condicionada: o dinheiro pode ser retirado após certo tempo de "carência", mas o rendimento diminui.',
	'-Os CDBs têm 20% de imposto sobre seus rendimentos;\n -Eles têm FGC (Fundo Garantidor de Créditos); \n -Em casos de emergência, você pode vender o papel no mercado secundário (para outro investidor).'
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
		get_tree().change_scene("res://Scenes_ana/QuizCDB.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true


func _on_Button_pressed():
	load_dialog()
