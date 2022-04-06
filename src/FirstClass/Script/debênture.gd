extends Node2D

func _ready():
	$money_invest_bank.update()

func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/renda_fixa.tscn")
	

func _on_Button_invest_pressed():
	if (float(get_node("money_invest").text) >= 0) && (Global.digital_money - float(get_node("money_invest").text) >= 0):
		Investiment.invest_money_debenture += float (get_node("money_invest").text)
		Global.digital_money -= float (get_node("money_invest").text)
		$money_digital.update()
		$money_invest_bank.update()
		$money_invest.text = ""
		Global.recordsInvest.append(Investiment.invest_money_debenture)
	else:
		$money_invest.text = "Valor inválido"
		$Timer.start()
		$money_invest.grab_focus()
		pass # Replace with function body.


func _on_Button_remove_pressed():
	if (float(get_node("money_invest").text) >= 0) && (Investiment.invest_money_debenture - float(get_node("money_invest").text) >= 0) && float(get_node("money_invest").text) <= Investiment.profit_debenture:
		Investiment.invest_money_debenture -= float (get_node("money_invest").text)
		Global.digital_money += float (get_node("money_invest").text)
		Investiment.profit_debenture -= float (get_node("money_invest").text)
		$money_digital.update()
		$money_invest_bank.update()
		$profit.update()
		$money_invest.text = ""
	elif (float(get_node("money_invest").text) >= 0) && (Investiment.invest_money_debenture - float(get_node("money_invest").text) >= 0):
		Investiment.invest_money_debenture -= float (get_node("money_invest").text)
		Global.digital_money += float (get_node("money_invest").text)
		Investiment.profit_debenture = 0
		$money_digital.update()
		$profit.update()
		$money_invest_bank.update()
		$money_invest.text = ""
	else:
		$money_invest.text = "Valor inválido"
		$Timer.start()
		$money_invest.grab_focus()
		pass # Replace with function body.


func _on_Timer_timeout():
	$money_invest.text = ""
	$Timer.stop()
	pass # Replace with function body.
