extends Node2D

func _ready():
	pass # Replace with function body.

func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenes/Bank.tscn")


func _on_Button_add_pressed():
	if (float(get_node("money_invest").text) >= 0) && (Global.money - float(get_node("money_invest").text) >= 0):
		Global.digital_money += float (get_node("money_invest").text)
		Global.money -= float (get_node("money_invest").text)
		Records.bank.append(float(get_node("money_invest").text))
		Global.update_wallet[0] = true
		Global.update_wallet[1] = Records.bank.back()*-1 
		print(Global.money)
		print(Global.digital_money)
		$money_digital.text = str(Global.digital_money)
		$money_physicist.text = str(Global.money)
		$money_digital.update()
		$money_invest.text = ""
	else:
		$money_invest.text = "Valor inválido"
		$Timer.start()
		$money_invest.grab_focus()
		pass # Replace with function body.


func _on_Button_remove_pressed():
	if (float(get_node("money_invest").text) >= 0) && (Global.digital_money - float(get_node("money_invest").text) >= 0):
		Global.money += float (get_node("money_invest").text)
		Global.digital_money -= float (get_node("money_invest").text)
		Records.bank.append(float(get_node("money_invest").text)*-1)
		$money_digital.text = str(Global.digital_money)
		$money_physicist.text = str(Global.money)
		$money_digital.update()
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
