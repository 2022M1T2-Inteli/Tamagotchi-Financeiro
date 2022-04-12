extends CanvasLayer

#set player's money to text labels
func _ready():
	$FundoPreto.visible = false
	$InstructionsMoneyStore.visible = false
	$RichTextLabel.visible = false
	$RichTextLabel2.visible = false
	$RichTextLabel3.visible = false
	$RichTextLabel4.visible = false
	$Button2.visible = false
	$RichTextLabel3.text = str ("R$ %.2f" % float(Global.digital_money))
	$RichTextLabel4.text = str ("R$ %.2f" % float(Global.money))

# shows player's money
func _on_Button_pressed():
	$FundoPreto.visible = true
	$InstructionsMoneyStore.visible = true
	$RichTextLabel.visible = true
	$RichTextLabel2.visible = true
	$RichTextLabel3.visible = true
	$RichTextLabel4.visible = true
	$Button2.visible = true

#goes back to store page
func _on_Button2_pressed():
	$Button2.visible = false
	$FundoPreto.visible = false
	$InstructionsMoneyStore.visible = false
	$RichTextLabel.visible = false
	$RichTextLabel2.visible = false
	$RichTextLabel3.visible = false
	$RichTextLabel4.visible = false
