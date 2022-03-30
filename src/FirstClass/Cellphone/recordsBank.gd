extends Node2D

func _ready():
	Global.recordsPrice.append(-100)
	if Global.recordsPrice.size() > 0:
		for i in Global.recordsPrice:
			$ItemList.add_item("Mercado $" + str(i))
			$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
			$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)
			
	if Global.recordsBank.size() > 0:
		for i in Global.recordsBank:
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
