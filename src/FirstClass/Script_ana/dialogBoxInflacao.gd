extends Control

# Code that is responsable for the content of a lesson.
# It makes the logic of text pass and dialog blocks 
# In particular, this script refers to Inflation

var dialog = [
	'Bom dia! Você está pronto para aprender sobre Inflação?',
	'É importante compreender que não investir o seu dinheiro também é um risco, pois ao longo do tempo o valor do dinheiro tende a diminuir, e isso se dá por causa da famosa “inflação”. \n Basicamente, quanto mais o tempo passa e mais a inflação sobe, menos uma nota de 100 consegue comprar.',
	'Mas, afinal, o que é a inflação? \n -Inflação é um termo usado para designar o aumento generalizado de preços. \n -Ela representa o aumento do custo de vida, e a consequente redução no poder de compra da população.',
	'Principais causas da inflação:\n 1) Demanda > oferta de produtos; \n 2) Aumento de emissão de moeda → mais dinheiro circulando no mercado do que o ideal, visto que esse aumento não está associado a um aumento de produção ou riqueza;',
	'3) Aumento nos custos de produção → levando a um aumento do preço final do produto;\n 4) Aumento das taxa de câmbio → quando se trata de produtos importados ou que dependem de matéria prima do exterior.',
	'Como ela é calculada? \n -Preços de uma cesta de produtos são coletados todo mês e são comparados com os preços do mês anterior. \n -Cada tipo de produto, de acordo com a relevância no consumo médio da população, tem um peso diferente no cálculo. \n -Principal índice de referência: IPCA (calculado pelo IBGE).',
	'Rentabilidade real: \n -Retorno de um investimento, descontando a inflação.\n -Precisa ser positiva para o investimento valer à pena.\n -Exemplo: você investiu na poupança, e o rendimento foi de 2%. Se a inflação desse período foi de 1%, o investimento valeu à pena. Se a inflação foi de 4%, você “perdeu” dinheiro.'
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
		get_tree().change_scene("res://Scenes_ana/QuizInflacao.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true




func _on_Button_pressed():
	load_dialog()
