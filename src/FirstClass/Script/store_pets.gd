extends Node2D

#product prices
var dog : float = 2100.00
var cat : float = 1400.00
var pet_3 : float = 500.00
var pet_4 : float = 700.00

var purchased = preload("res://Scenes/Purchased.tscn")

#calculate product price based on inflation
func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(dog + dog * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(cat + cat * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(pet_3 + pet_3 * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(pet_4 + pet_4 * (Global.inflation/100))))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f"  % float(dog)))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f"  % float(cat)))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f"  % float(pet_3)))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f"  % float(pet_4)))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	
	for i in 4:
		if(StoreManagement.products[3][i] == true):
			var new_node = purchased.instance()
			new_node.position = Vector2(170 + 330*i, 450)
			add_child(new_node)


#player go to the screen to buy the product he wants
func _on_Button_dog_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Dog.png"
	StoreManagement.i = 3
	StoreManagement.j = 0
	StoreManagement.store_total = 2100.00 + dog * (Global.inflation/100)
	StoreManagement.item_status = [0,0,1,100]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_cat_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Cat.png"
	StoreManagement.i = 3
	StoreManagement.j = 1
	StoreManagement.store_total = 1400.00 + cat * (Global.inflation/100)
	StoreManagement.item_status = [0,0,1,80]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_pet_3_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Hamster.png"
	StoreManagement.i = 3
	StoreManagement.j = 2
	StoreManagement.store_total = 500.00 + pet_3 * (Global.inflation/100)
	StoreManagement.item_status = [0,0,0.5,50]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_pet_4_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Cockatiel.png"
	StoreManagement.i = 3
	StoreManagement.j = 3
	StoreManagement.store_total = 700.00 + pet_4 * (Global.inflation/100)
	StoreManagement.item_status = [0,0,0.5,50]
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass

#last page
func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/store_t-shirt.tscn")
#next page
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/store_residence.tscn")
