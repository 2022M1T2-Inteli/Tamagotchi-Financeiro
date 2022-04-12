extends CanvasLayer

#function to set the visual part of the store, prices, player's money, functional buttuons
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

#back to last page in list
func _on_Button_pressed():
	$FundoPreto.visible = true
	$InstructionsMoneyStore.visible = true
	$RichTextLabel.visible = true
	$RichTextLabel2.visible = true
	$RichTextLabel3.visible = true
	$RichTextLabel4.visible = true
	$Button2.visible = true

# go to next page in list
func _on_Button2_pressed():
	$Button2.visible = false
	$FundoPreto.visible = false
	$InstructionsMoneyStore.visible = false
	$RichTextLabel.visible = false
	$RichTextLabel2.visible = false
	$RichTextLabel3.visible = false
	$RichTextLabel4.visible = false

