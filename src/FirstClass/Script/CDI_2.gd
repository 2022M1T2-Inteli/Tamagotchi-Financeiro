extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")


func _on_Button_remove_pressed():
		if (float(get_node("money_invest_4").text) >= 0) && (Global.invested_money_cdi - float(get_node("money_invest_4").text) >= 0):
			Global.invested_money_cdi -= float (get_node("money_invest_4").text)
			$money_invest_bank.text = str(Global.invested_money_cdi)
			Global.digital_money += float (get_node("money_invest_4").text)
			$money_digital.update()
			$money_invest_4.text = ""
		else:
			$money_invest_4.text = "Valor inválido"
			$Timer.start()
			$money_invest_4.grab_focus()
			pass # Replace with function body.


func _on_Button_invest_pressed():
	if (float(get_node("money_invest_4").text) >= 0) && (Global.digital_money - float(get_node("money_invest_4").text) >= 0):
		Global.invested_money_cdi += float (get_node("money_invest_4").text)
		$money_invest_bank.text = str(Global.invested_money_cdi)
		Global.digital_money -= float (get_node("money_invest_4").text)
		$money_digital.update()
		$money_invest_4.text = ""
		$profit.text = str((Global.invested_money_cdi * pow(1.08,Global.day-1)) - Global.invested_money_cdi)
	else:
		$money_invest_4.text = "Valor inválido"
		$Timer.start()
		$money_invest_4.grab_focus()
		pass # Replace with function body..


func _on_Timer_timeout():
	$money_invest_4.text = ""
	$Timer.stop()
	pass # Replace with function body.
