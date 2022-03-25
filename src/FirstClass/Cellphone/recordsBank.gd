extends Node2D

func _ready():
	if Global.recordsPrice.size() > 0:
		for i in Global.recordsPrice:
			$ItemList.add_item("Mercado $" + str(i))
			$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
	if Global.recordsBank.size() > 0:
		for i in Global.recordsBank:
			if(i > 0):
				$ItemList.add_item("Deposito $" + str(i))
				$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.green)
			else:
				$ItemList.add_item("Saque $" + str(i))
				$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)

func _on_Button_pressed():
	self.queue_free()
