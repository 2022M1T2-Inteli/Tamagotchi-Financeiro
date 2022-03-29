extends Node2D

var dog : float = 3200.00
var cat : float = 2200.00
var pet_3 : float = 500.00
var pet_4 : float = 700.00

var purchased = preload("res://Scenes/Purchased.tscn")

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$%.2f" % float(dog * (Global.inflation/100))))
		$RichTextLabel2.bbcode_text = (str ("[center]R$%.2f" % float(cat * (Global.inflation/100))))
		$RichTextLabel3.bbcode_text = (str ("[center]R$%.2f" % float(pet_3 * (Global.inflation/100))))
		$RichTextLabel4.bbcode_text = (str ("[center]R$%.2f" % float(pet_4 * (Global.inflation/100))))
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


func _on_Button_dog_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Dog.png"
	StoreManagement.i = 3
	StoreManagement.j = 0
	StoreManagement.store_total = 3200.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_cat_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Cat.png"
	StoreManagement.i = 3
	StoreManagement.j = 1
	StoreManagement.store_total = 5200.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_pet_3_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Hamster.png"
	StoreManagement.i = 3
	StoreManagement.j = 2
	StoreManagement.store_total = 500.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass


func _on_Button_pet_4_pressed():
	StoreManagement.store_product_index = "res://assets/Pets_Cockatiel.png"
	StoreManagement.i = 3
	StoreManagement.j = 3
	StoreManagement.store_total = 700.00
	if(!StoreManagement.products[StoreManagement.i][StoreManagement.j]):
		get_tree().change_scene("res://Scenes/StoreCart.tscn")
	else:
		pass
