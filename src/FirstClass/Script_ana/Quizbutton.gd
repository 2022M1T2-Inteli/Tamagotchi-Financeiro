extends Node2D

var dialog = [
	'QUIZ',
	'Se você investir 1000$ na poupança, quanto você terá ao final do 1° mês? \n -> Fórmula do rendimento: M = C x (1+ i)^t \n - juros= 0.5%',
]

var dialog_index = 0
var finished = false

func _ready():
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



func _on_certo_pressed():
	get_tree().change_scene("res://Scenes/Quiz_right_answer.tscn")


func _on_errado_pressed():
	get_tree().change_scene("res://Scenes/Errouquiz.tscn")


func _on_Tween_tween_completed(object, key):
	finished = true
