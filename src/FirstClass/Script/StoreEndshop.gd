extends Node2D

func _ready():
	$RichTextLabel.bbcode_text = str("[center]R$ ",(StoreManagement.store_total))
	var image = Image.new()
	image.load(StoreManagement.store_product_index)
	var texture = ImageTexture.new()
	texture.create_from_image(image, 0)
	get_node("Selected_Product").texture = texture
	get_node("Selected_Product").position = Vector2(615,410)
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


func _on_Button_yes_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")


func _on_Button_not_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")
