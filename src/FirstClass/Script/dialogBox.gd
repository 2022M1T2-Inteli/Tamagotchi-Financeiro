extends Control

var dialog = [
	'Poupança é um investimento de renda fixa, simples e acessível, mas, afinal, o que é renda fixa? É um investimento em que o cálculo da remuneração é previamente definido, tornando-o mais seguro, mesmo que não seja 100%',
	'A poupança é isenta de custos. A cobrança de taxas de abertura, de manutenção, de administração ou de performance é considerada proibida. Inclusive, os rendimentos da poupança não pagam Imposto de Renda, mesmo que tenham que ser declarados anualmente.',
	'Um de seus principais atrativos é sua liquidez diária: Os resgates de suas aplicações podem ser realizados a qualquer momento, com muita facilidade.',
	'A retirada do dinheiro do investimento pode ser: 1) física, por um caixa eletrônico do banco em que a conta foi aberta; 2) eletrônica, em que, de forma simples, os recursos caem na conta corrente em instantes.',
	'Aniversário da poupança: Embora tenha liquidez diária, a remuneração da caderneta é creditada mensalmente apenas na sua data de “aniversário”, que é o dia do mês em que o depósito foi feito.',
	'Assim, uma aplicação realizada no dia 10 de um determinado mês só fará jus à remuneração exatamente no dia 10 do mês seguinte. Se resgatar o dinheiro no dia 9, perde-se todo o retorno do período.',
	'Destino dos recursos aplicados: 65% dos recursos aplicados na caderneta são obrigatoriamente destinados ao mercado imobiliário (para os bancos concederem financiamentos a quem quer comprar um imóvel próprio).',
	'O rendimento altera conforme o patamar em que se encontra a Selic (a taxa básica de juros da economia brasileira). Na renda fixa, uma Selic alta leva a rendimentos mais altos, e vice-versa.',
	'OBSERVAÇÃO: Adotaremos 5% de rendimento mensal fixo + a variação da TR (taxa referencial) = 0 no jogo.   FÓRMULA RENDIMENTO MENSAL - M = 105 % * C  --> M = Montante --> C = Capital inicial'
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
