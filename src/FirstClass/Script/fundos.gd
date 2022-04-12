extends Node2D

# unlock investiments
func _ready():
	if Global.knowledge >= 30:
		$FundoPreto3.visible = false
		$FundoPreto4.visible = false
	if Global.knowledge >= 15:
		$FundoPreto.visible = false
		$FundoPreto2.visible = false

# direct player to the investiment he wants
func _on_Button_pressed():
	if Global.knowledge >= 15:
		get_tree().change_scene("res://Scenes/imobiliario.tscn")


func _on_Button2_pressed():
	if Global.knowledge >= 15:
		get_tree().change_scene("res://Scenes/multi_mercado.tscn")


func _on_Button3_pressed():
	if Global.knowledge >= 30:
		get_tree().change_scene("res://Scenes/acoes.tscn")


func _on_Button4_pressed():
	if Global.knowledge >= 30:
		get_tree().change_scene("res://Scenes/acoes_alto_risco_1.tscn")


func _on_Button5_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")
