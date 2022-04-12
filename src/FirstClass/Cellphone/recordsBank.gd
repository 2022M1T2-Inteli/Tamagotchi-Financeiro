extends Node2D

func _ready():
	if Records.market.size() > 0:
		for i in Records.market:
			$ItemList.add_item("Mercado $" + str(i))
			$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
			$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)
			
	if Records.store.size() > 0:
		for i in Records.store:
			$ItemList.add_item("Loja $" + str(i))
			$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
			$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)
			
	if Records.work.size() > 0:
		for i in Records.work:
			$ItemList.add_item("Trabalho $" + str(i))
			$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.green)
			$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)
			
	if Records.bank.size() > 0:
		for i in Records.bank:
			if(i > 0):
				$ItemList.add_item("Deposito $" + str(i))
				$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.green)
				$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)

			else:
				$ItemList.add_item("Saque $" + str(i))
				$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
				$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)


func _on_Button_pressed():
	self.queue_free()
