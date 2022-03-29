extends Node2D

var house_1 : float = 300.00
var house_2 : float = 1200.00
var house_3 : float = 6000.00
var house_4 : float = 32500.00

var purchased = preload("res://Scenes/Purchased.tscn")

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(house_1 * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(house_2 * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(house_3 * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(house_4 * (Global.inflation/100))))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(house_1)))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(house_2)))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(house_3)))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(house_4)))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	
	for i in 4:
		if(StoreManagement.products[4][i] == true):
			var new_node = purchased.instance()
			new_node.position = Vector2(170 + 330*i, 450)
			add_child(new_node)



func _on_Button_house_1_pressed():
	StoreManagement.store_product_index = "res://assets/House_I.png"
	StoreManagement.i = 4
	StoreManagement.j = 0
	StoreManagement.store_total = 300.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_house_2_pressed():
	StoreManagement.store_product_index = "res://assets/House_II.png"
	StoreManagement.i = 4
	StoreManagement.j = 1
	StoreManagement.store_total = 1200.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_house_3_pressed():
	StoreManagement.store_product_index = "res://assets/House_III.png"
	StoreManagement.i = 4
	StoreManagement.j = 2
	StoreManagement.store_total = 6000.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_house_4_pressed():
	StoreManagement.store_product_index = "res://assets/House_IV.png"
	StoreManagement.i = 4
	StoreManagement.j = 3
	StoreManagement.store_total = 32500.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass
