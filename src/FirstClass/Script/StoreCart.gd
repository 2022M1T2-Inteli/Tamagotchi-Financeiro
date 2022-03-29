extends Node2D

var paymentType = null

func _ready():
	$RichTextLabel.bbcode_text = str("[center]R$%.2f" % float(StoreManagement.store_total))
	var image = Image.new()
	image.load(StoreManagement.store_product_index)
	var texture = ImageTexture.new()
	texture.create_from_image(image, 0)
	get_node("Selected_Product").texture = texture
	get_node("Selected_Product").position = Vector2(775,450)
	get_node("Selected_Product").scale = Vector2(0.5, 0.5)

func _on_HomeRectangle_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")


func _on_BooksRectangle_pressed():
	get_tree().change_scene("res://Scenes/StoreBooks.tscn")


func _on_VehiclesRectangle_pressed():
	get_tree().change_scene("res://Scenes/StoreVehicles.tscn")


func _on_ShirtsRectangle_pressed():
	get_tree().change_scene("res://Scenes/store_t-shirt.tscn")


func _on_PetsRectangle_pressed():
	get_tree().change_scene("res://Scenes/store_pets.tscn")


func _on_HousesRectangle_pressed():
	get_tree().change_scene("res://Scenes/store_residence.tscn")

func _on_Button_money_pressed():
	paymentType = 0

func _on_Button_digital_pressed():
	paymentType = 1

func _on_finish_pressed():
	StoreManagement.store_total += float (get_node("RichTextLabel").text)
	
	if (StoreManagement.store_total >= 0) and (Global.money - StoreManagement.store_total >= 0) and (paymentType == 0):
		Global.money -= StoreManagement.store_total
		StoreManagement.products[StoreManagement.i][StoreManagement.j] = true
		Global.actions += StoreManagement.item_status[0] 
		Global.happiness += StoreManagement.item_status[1] 
		Global.knowledge += StoreManagement.item_status[2] 
		get_tree().change_scene("res://Scenes/StoreEndshop.tscn")
	elif (StoreManagement.store_total >= 0) and (Global.digital_money - StoreManagement.store_total >= 0) and (paymentType == 1):
		Global.digital_money -= StoreManagement.store_total
		Global.actions += StoreManagement.item_status[0] 
		Global.happiness += StoreManagement.item_status[1] 
		Global.knowledge += StoreManagement.item_status[2] 
		StoreManagement.products[StoreManagement.i][StoreManagement.j] = true
		get_tree().change_scene("res://Scenes/StoreEndshop.tscn")
	else:
		$Sprite.visible = true
		$Sprite2.visible = true
		$Timer.start()
		get_tree().paused = true

func _on_Timer_timeout():
	$Sprite.visible = false
	$Sprite2.visible = false
	get_tree().paused = false
	
