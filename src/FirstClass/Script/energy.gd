extends CanvasLayer

#set elements visibility
var visibility = [true, true, true, false, false, false, false, false]

# function to update wallet value
func _ready():
	if Global.update_wallet[0]:
		$Expense.visible = true
		$Expense.bbcode_text = (str ("[center]R$%.2f" % float(Global.update_wallet[1])))
		$Expense_Notification.start()
	change_actions()
	
#visual part of energy, if the player expend an acation, one point of energt will dissapers
func change_actions():
	for i in range(visibility.size(), Global.actions, -1):
		get_node("energy_"+ str(i)).visible = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass



func _on_Expense_Notification_timeout():
	get_node("Expense").visible = false
	Global.update_wallet[0] = false
	$Expense_Notification.stop()
