extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/bank_3.tscn")


func _on_Button_invest_pressed():
	if (float(get_node("money_invest").text) >= 0) && (Global.digital_money - float(get_node("money_invest").text) >= 0):
		Global.invested_money += float (get_node("money_invest").text)
		$money_invest_bank.text = str(Global.invested_money)
		Global.digital_money -= float (get_node("money_invest").text)
		$money_digital.update()
		$money_invest.text = ""
		$profit.text = str((Global.invested_money * pow(1.05,Global.day-1)) - Global.invested_money)
	else:
		$money_invest.text = "Valor inválido"
		$Timer.start()
		$money_invest.grab_focus()
		pass # Replace with function body.


func _on_Button_remove_pressed():
	if (float(get_node("money_invest").text) >= 0) && (Global.digital_money - float(get_node("money_invest").text) >= 0):
		Global.invested_money -= float (get_node("money_invest").text)
		$money_invest_bank.text = str(Global.invested_money)
		Global.digital_money += float (get_node("money_invest").text)
		$money_digital.update()
		$money_invest.text = ""
		$profit.text = str((Global.invested_money * pow(1.05,Global.day-1)) - Global.invested_money)
	else:
		$money_invest.text = "Valor inválido"
		$Timer.start()
		$money_invest.grab_focus()
		pass # Replace with function body.


func _on_Timer_timeout():
	$money_invest.text = ""
	$Timer.stop()
	pass # Replace with function body.
