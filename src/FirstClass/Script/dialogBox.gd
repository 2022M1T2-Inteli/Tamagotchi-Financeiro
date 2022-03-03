extends Control

var dialog = [
	'Poupança é um investimento de renda fixa, simples e acessível.',
	'Neste caso as cobranças de taxas de abertura ou de manutenção, taxas de administração ou de performance é considerada proibida, sendo um ponto favorável.',
	'Um de seus principais atrativos é a facilidade que acontece o resgate de suas aplicações.',
	'Quando surge o desejo de retirar o investimento, pode ser físico, em um caixa eletrônico do banco ao qual a conta foi aberta ou de forma simples os recursos caem na conta corrente em instantes.'
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
