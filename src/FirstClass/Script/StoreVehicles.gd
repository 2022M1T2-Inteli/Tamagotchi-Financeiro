extends Node2D

#product prices
var Bicycle : float = 300.00
var Eletric_Bike : float = 1300.00
var Motorcycle : float = 2100.00
var Standard_Car : float = 8000.00
var Deluxe_Car : float = 22000.00

var purchased = preload("res://Scenes/Purchased.tscn")

#calculate product price based on inflation
func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(Bicycle + Bicycle * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(Eletric_Bike + Eletric_Bike * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(Motorcycle + Motorcycle * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(Standard_Car + Standard_Car * (Global.inflation/100))))
		$RichTextLabel5.bbcode_text = (str ("[center]R$%.2f" % float(Deluxe_Car + Deluxe_Car * (Global.inflation/100))))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f"  % float(Bicycle)))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f"  % float(Eletric_Bike)))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f"  % float(Motorcycle)))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f"  % float(Standard_Car)))
		$RichTextLabel5.bbcode_text = (str ("[center]R$%.2f"  % float(Deluxe_Car)))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	$RichTextLabel4.update()
	
	for i in 5:
		if(StoreManagement.products[1][i] == true):
			var new_node = purchased.instance()
			new_node.position = Vector2(125 + 250*i, 450)
			add_child(new_node)
	
	StoreManagement.item_status[1] = 0
	StoreManagement.item_status[2] = 0

#player go to the screen to buy the product he wants
func _on_Bicycle_pressed():
	StoreManagement.store_product_index = "res://assets/Bicycle.png"
	StoreManagement.i = 1
	StoreManagement.j = 0
	StoreManagement.store_total = 300.00 + Bicycle * (Global.inflation/100)
	StoreManagement.item_status[0] = 3
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Eletric_Bike_pressed():
	StoreManagement.store_product_index = "res://assets/Eletric_Bike.png"
	StoreManagement.i = 1
	StoreManagement.j = 1
	StoreManagement.store_total = 1300.00 + Eletric_Bike * (Global.inflation/100)
	StoreManagement.item_status[0] = 4
	StoreManagement.item_status[3] = 10
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Motorcycle_pressed():
	StoreManagement.store_product_index = "res://assets/Motorcycle.png"
	StoreManagement.i = 1
	StoreManagement.j = 2
	StoreManagement.store_total = 2100.00 + Motorcycle * (Global.inflation/100)
	StoreManagement.item_status[0] = 5
	StoreManagement.item_status[3] = 25
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Standard_Car_pressed():
	StoreManagement.store_product_index = "res://assets/Standard_Car.png"
	StoreManagement.i = 1
	StoreManagement.j = 3
	StoreManagement.store_total = 8000.00 + Standard_Car * (Global.inflation/100)
	StoreManagement.item_status[0] = 6
	StoreManagement.item_status[3] = 50
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Deluxe_Car_pressed():
	StoreManagement.store_product_index = "res://assets/Deluxe_Car.png"
	StoreManagement.i = 1
	StoreManagement.j = 4
	StoreManagement.store_total = 22000.00 + Deluxe_Car * (Global.inflation/100)
	StoreManagement.item_status[0] = 7
	StoreManagement.item_status[3] = 500
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass

# last page
func _on_Button_pressed():
		get_tree().change_scene("res://Scenes/StoreBooks.tscn")

#next oage
func _on_Button2_pressed():
		get_tree().change_scene("res://Scenes/store_t-shirt.tscn")
