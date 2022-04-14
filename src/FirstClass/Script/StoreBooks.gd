extends Node2D

#product prices
var Book_I : float = 500.00
var Book_II : float = 900.00
var Book_III : float = 1400.00
var Book_IV : float = 2100.00
var Book_V : float = 3200.00

var purchased = preload("res://Scenes/Purchased.tscn")

func _ready():

	#calculate product price based on inflation
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(Book_I + Book_I * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text= (str ("[center]R$%.2f" % float(Book_II + Book_II * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(Book_III + Book_III * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(Book_IV + Book_IV * (Global.inflation/100))))
		$RichTextLabel5.bbcode_text = (str ("[center]R$%.2f" % float(Book_V + Book_V * (Global.inflation/100))))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(Book_I)))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(Book_II)))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(Book_III)))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(Book_IV)))
		$RichTextLabel5.bbcode_text = (str ("[center]R$%.2f" % float(Book_V)))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	$RichTextLabel4.update()
	
	for i in 5:
		if(StoreManagement.products[0][i] == true):
			var new_node = purchased.instance()
			new_node.position = Vector2(125 + 250*i, 450)
			add_child(new_node)
	StoreManagement.item_status[0] = 3


#player go to the screen to buy the product he wants
func _on_Book_I_pressed():
	StoreManagement.store_product_index = "res://assets/Book_I.png"
	StoreManagement.i = 0
	StoreManagement.j = 0
	StoreManagement.store_total = Book_I + Book_I * (Global.inflation/100)
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Book_II_pressed():
	StoreManagement.store_product_index = "res://assets/Book_II.png"
	StoreManagement.i = 0
	StoreManagement.j = 1
	StoreManagement.store_total = Book_II + Book_II * (Global.inflation/100)
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Book_III_pressed():
	StoreManagement.store_product_index = "res://assets/Book_III.png"
	StoreManagement.i = 0
	StoreManagement.j = 2
	StoreManagement.store_total = Book_III + Book_III * (Global.inflation/100)
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Book_IV_pressed():
	StoreManagement.store_product_index = "res://assets/Book_IV.png"
	StoreManagement.i = 0
	StoreManagement.j = 3
	StoreManagement.store_total = Book_IV + Book_IV * (Global.inflation/100)
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Book_V_pressed():
	StoreManagement.store_product_index = "res://assets/Book_V.png"
	StoreManagement.i = 0
	StoreManagement.j = 4
	StoreManagement.store_total = Book_V + Book_V * (Global.inflation/100)
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass

#goes back to store main page
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")


func _on_Button2_pressed():
		get_tree().change_scene("res://Scenes/StoreVehicles.tscn")
