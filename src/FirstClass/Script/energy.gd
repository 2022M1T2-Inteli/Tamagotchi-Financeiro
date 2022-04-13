extends CanvasLayer

# Code for show the number of available actions in the screen
# It also manages the number of remaining actions and updates
# The shows the last debit bellow the cash display 

var visibility = [true, true, true, false, false, false, false, false]

func _ready():
	if Global.update_wallet[0]:
		$Expense.visible = true
		$Expense.bbcode_text = (str ("[center]R$%.2f" % float(Global.update_wallet[1])))
		$Expense_Notification.start()
	change_actions()
	$RichTextLabel.text = (str (Global.day) + "ª semana")


func change_actions():
	for i in range(visibility.size(), Global.actions, -1):
		get_node("energy_"+ str(i)).visible = false


func _on_Expense_Notification_timeout():
	get_node("Expense").visible = false
	Global.update_wallet[0] = false
	$Expense_Notification.stop()
	
