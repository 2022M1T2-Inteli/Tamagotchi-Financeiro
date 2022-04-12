extends Control

# Code that is responsable for the content of a lesson.
# It makes the logic of text pass and dialog blocks 
# In particular, this script refers to Direct Treasury

var dialog = [
	'Bom dia! Você está pronto para aprender sobre investimentos de Renda Fixa?',
	'Além da Poupança e CDBs, existem outros investimentos de renda fixa, como o Tesouro Direto, Debêntures, LCI e LCA, CRI e CRA.',
	'TESOURO DIRETO: \n - emprestar dinheiro para o governo; \n -renda mínima muito pequena; \n - considerado o investimento mais seguro;\n -tem liquidez diária; \n-custos: taxa de custódia (0,25% ao ano) e 20% de imposto.',
	'DEBÊNTURES: \n -Títulos emitidos por empresas;\n -normalmente servem p financiar grandes projetos; \n-Têm o vencimento muito mais longo;\n - São tributadas no imposto de renda (menos as incentivadas); \n-Não são cobertas por FGC.',
	'LCI e LCA- Letras de crédito Imobiliário e Agronegócio. \n- emitidas por bancos, mas com finalidades específicas, diferente das CDBs; \n- Têm um rendimento um pouco menor, mas são isentas de imposto de renda e têm cobertura FGC.',
	'CRI e CRA- Certificados de Recebíveis Imobiliários e do Agronegócio.\n Eles envolvem securitização= transformam direitos de crédito (como as parcelas de um financiamento imobiliário ou o pagamento de aluguéis mensais) em papéis negociados no mercado financeiro.',
	'→ ex: quando uma empresa vende um imóvel parcelado mas precisa do dinheiro todo de uma vez, “empacota” esse fluxo futuro em um CRI e consegue vender no mercado.\n -São isentos de imposto de renda; \n -não possuem FGC. '
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
		get_tree().change_scene("res://Scenes_ana/QuizTesouroDireto.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true


func _on_Button_pressed():
	load_dialog()
