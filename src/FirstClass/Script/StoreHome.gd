extends Node2D

#goes to main page
func _on_HomeRectangle_pressed():
	pass

#goes to product page
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
