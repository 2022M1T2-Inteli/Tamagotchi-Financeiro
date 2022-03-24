extends Node2D

var Bicycle : float = 300.00
var Eletric_Bike : float = 1300.00
var Motorcycle : float = 2100.00
var Standard_Car : float = 8000.00
var Deluxe_Car : float = 32000.00

var purchased = preload("res://Scenes/Purchased.tscn")

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " ,(Bicycle * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ " ,(Eletric_Bike * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " ,(Motorcycle * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " ,(Standard_Car * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ " ,(Deluxe_Car * (Global.inflation/100))).pad_zeros(2))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ "  , (Bicycle)).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ "  , (Eletric_Bike)).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ "  , (Motorcycle)).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ "  , (Standard_Car)).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ "  , (Deluxe_Car)).pad_zeros(2))
	
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

func _on_Bicycle_pressed():
	StoreManagement.store_product_index = "res://assets/Bicycle.png"
	StoreManagement.i = 1
	StoreManagement.j = 0
	StoreManagement.store_total = 300.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Eletric_Bike_pressed():
	StoreManagement.store_product_index = "res://assets/Eletric_Bike.png"
	StoreManagement.i = 1
	StoreManagement.j = 1
	StoreManagement.store_total = 1300.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Motorcycle_pressed():
	StoreManagement.store_product_index[0] = "res://assets/Motorcycle.png"
	StoreManagement.i = 1
	StoreManagement.j = 2
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Standard_Car_pressed():
	StoreManagement.store_product_index[0] = "res://assets/Standard_Car.png"
	StoreManagement.i = 1
	StoreManagement.j = 3
	StoreManagement.store_total = 8000.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Deluxe_Car_pressed():
	StoreManagement.store_product_index[0] = "res://assets/Deluxe_Car.png"
	StoreManagement.i = 1
	StoreManagement.j = 4
	StoreManagement.store_total = 32000.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass
