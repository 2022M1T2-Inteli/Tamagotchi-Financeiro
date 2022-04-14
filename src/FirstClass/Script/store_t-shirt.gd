extends Node2D

#product prices
var t_shirt_1 : float = 300.00
var t_shirt_2 : float = 300.00
var t_shirt_3 : float = 300.00
var t_shirt_4 : float = 300.00
var t_shirt_5 : float = 300.00

var purchased = preload("res://Scenes/Purchased.tscn")

#calculate product price based on inflation
func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_1 + t_shirt_1 * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_2 + t_shirt_2 * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_3 + t_shirt_3 * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_4 + t_shirt_4 * (Global.inflation/100))))
		$RichTextLabel5.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_5 + t_shirt_5 * (Global.inflation/100))))
		
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_1)))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float (t_shirt_2)))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_3)))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_4)))
		$RichTextLabel5.bbcode_text = (str ("[center]R$%.2f" % float(t_shirt_5)))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	$RichTextLabel4.update()
	
	for i in 5:
		if(StoreManagement.products[2][i] == true):
			var new_node = purchased.instance()
			new_node.position = Vector2(125 + 250*i, 450)
			add_child(new_node)
	StoreManagement.item_status[0] = 0
	StoreManagement.item_status[1] = 1
	StoreManagement.item_status[2] = 0

#player go to the screen to buy the product he wants
func _on_Button_tshirt_yellow_pressed():
	StoreManagement.store_product_index = "res://assets/Yellow_Shirt.png"
	StoreManagement.i = 2
	StoreManagement.j = 0
	StoreManagement.store_total = 300.00 + t_shirt_1 * (Global.inflation/100)
	StoreManagement.item_status = [0,1,0,0]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_tshirt_black_pressed():
	StoreManagement.store_product_index = "res://assets/Black_Shirt.png"
	StoreManagement.i = 2
	StoreManagement.j = 1
	StoreManagement.store_total = 300.00 + t_shirt_1 * (Global.inflation/100)
	StoreManagement.item_status = [0,1,0,0]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass
	
func _on_Button_tshirt_purple_pressed():
	StoreManagement.store_product_index = "res://assets/Purple_Shirt.png"
	StoreManagement.i = 2
	StoreManagement.j = 2
	StoreManagement.store_total = 300.00 + t_shirt_1 * (Global.inflation/100)
	StoreManagement.item_status = [0,1,0,0]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_tshirt_green_pressed():
	StoreManagement.store_product_index = "res://assets/Green_Shirt.png"
	StoreManagement.i = 2
	StoreManagement.j = 3
	StoreManagement.store_total = 300.00 + t_shirt_1 * (Global.inflation/100)
	StoreManagement.item_status = [0,1,0,0]
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_tshirt_pink_pressed():
	StoreManagement.store_product_index = "res://assets/Pink_Shirt.png"
	StoreManagement.i = 2
	StoreManagement.j = 4
	StoreManagement.store_total = 300.00 + t_shirt_1 * (Global.inflation/100)
	StoreManagement.item_status = [0,1,0,0]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass

#last page
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/StoreVehicles.tscn")

# next page
func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/store_pets.tscn")
