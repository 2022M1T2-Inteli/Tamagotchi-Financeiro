extends Node2D

#product prices
var house_1 : float = 500.00
var house_2 : float = 1200.00
var house_3 : float = 6000.00
var house_4 : float = 12500.00

var purchased = preload("res://Scenes/Purchased.tscn")

#calculate product price based on inflation
func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(house_1 + house_1 * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(house_2 + house_2 * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(house_3 + house_3 * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(house_4 + house_4 * (Global.inflation/100))))
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



#player go to the screen to buy the product he wants
func _on_Button_house_1_pressed():
	StoreManagement.store_product_index = "res://assets/House_I.png"
	StoreManagement.i = 4
	StoreManagement.j = 0
	StoreManagement.store_total = 500.00
	StoreManagement.item_status = [0,0,0.5,100]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_house_2_pressed():
	StoreManagement.store_product_index = "res://assets/House_II.png"
	StoreManagement.i = 4
	StoreManagement.j = 1
	StoreManagement.store_total = 1200.00
	StoreManagement.item_status = [0,0,1,300]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_house_3_pressed():
	StoreManagement.store_product_index = "res://assets/House_III.png"
	StoreManagement.i = 4
	StoreManagement.j = 2
	StoreManagement.store_total = 6000.00
	StoreManagement.item_status = [0,0,2,600]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_house_4_pressed():
	StoreManagement.store_product_index = "res://assets/House_IV.png"
	StoreManagement.i = 4
	StoreManagement.j = 3
	StoreManagement.store_total = 12500.00
	StoreManagement.item_status = [0,0,3,900]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass

#last page
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/store_pets.tscn")

#next page
func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")
