extends Node2D


func _ready():
	var image = Image.new()
	image.load(Global.store_product_index)
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
	pass # Replace with function body.


func _on_PetsRectangle_pressed():
	pass # Replace with function body.


func _on_HousesRectangle_pressed():
	pass # Replace with function body.
