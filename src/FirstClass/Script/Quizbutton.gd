extends Node2D

var dialog = [
	'Se a poupança render 5% ao mês. E 1000$ seus forem investidos. quanto você terá ao final de 1 mês?',
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
