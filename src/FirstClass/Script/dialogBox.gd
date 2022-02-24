extends Control

var dialog = [
	'Olá, este é um teste de dialogo, vou fazer uma breve explicação e depois fazer uma pergunta pra vc',
	'Historicamente definido como instrumento de troca, medida de valor e preservação parcial do valor de compra, o dinheiro é amplamente utilizado no mundo todo e seu nome/valor pode variar de lugar para lugar.',
	'Grande parcela da sociedade o vê somente como instrumento de troca, tendendo a gastar até o último centavo sempre que conseguem mais.',
	'O que você entende por gastos essenciais e a diferença de necessidade e desejo?'
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
		get_tree().change_scene("res://Scenery/classUniversity.tscn")
	dialog_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true
