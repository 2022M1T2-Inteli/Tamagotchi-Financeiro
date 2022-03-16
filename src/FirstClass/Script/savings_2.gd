extends Node2D

var invested_money

func _ready():
	$money_invest_2.grab_focus()
	pass # Replace with function body.


func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")


func _on_Button_invest_pressed():
	if float(get_node("money_invest_2").text) >= 0 && Global.money - float (get_node("money_invest_2").text) >= 0:
		invested_money = float (get_node("money_invest_2").text)
		#$money_invest_bank.text = str(invested_money)
		Global.money -= float (invested_money)
		$money_digital.update()
		$money_invest_2.text = ""
		#$profit.text = str((invested_money * pow(1.05,Global.day-1)) - invested_money)
	else:
		$money_invest_2.text = "Valor inválido"
		$Timer.start()
		$money_invest_2.grab_focus()
		pass # Replace with function body.


func _on_Timer2_timeout():
	$money_invest.text = ""
	$Timer.stop()
	pass # Replace with function body.
