extends Node2D

func _ready():
	if Global.recordsPrice.size() > 0:
		print(Global.recordsBank)
		for i in Global.recordsPrice:
			$VScrollBar/VBoxContainer.add_item("Mercado $" + str(i))
			$VScrollBar/VBoxContainer.set_item_custom_fg_color($VScrollBar/VBoxContainer.get_item_count() - 1, Color.red)
	if Global.recordsBank.size() > 0:
		for i in Global.recordsBank:
			if(i > 0):
				$VScrollBar/VBoxContainer.add_item("Deposito $" + str(i))
				$VScrollBar/VBoxContainer.set_item_custom_fg_color($VScrollBar/VBoxContainer.get_item_count() - 1, Color.green)
			else:
				$VScrollBar/VBoxContainer.add_item("Saque $" + str(i))
				$VScrollBar/VBoxContainer.set_item_custom_fg_color($VScrollBar/VBoxContainer.get_item_count() - 1, Color.red)

func _on_Button_pressed():
	self.queue_free()
