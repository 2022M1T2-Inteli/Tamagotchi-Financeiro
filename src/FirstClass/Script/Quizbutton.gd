extends Node2D

var dialog = [
	'QUIZ\n\n Uma das desvantagens dos mercados para quem investe em rendas variáveis é a...',
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
	get_tree().change_scene("res://Scenes/Quiz_right_answer_RendaVar.tscn")


func _on_errado_pressed():
	get_tree().change_scene("res://Scenes/ErrouquizRendaVar.tscn")


func _on_Tween_tween_completed(object, key):
	finished = true
