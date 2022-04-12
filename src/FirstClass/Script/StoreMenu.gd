extends CanvasLayer

var product

#goes back to store main page
func _on_Home_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")

# goes to product page
func _on_Books_pressed():
	get_tree().change_scene("res://Scenes/StoreBooks.tscn")


func _on_Vehicles_pressed():
	get_tree().change_scene("res://Scenes/StoreVehicles.tscn")


func _on_Shirts_pressed():
	get_tree().change_scene("res://Scenes/store_t-shirt.tscn")


func _on_Pets_pressed():
	get_tree().change_scene("res://Scenes/store_pets.tscn")


func _on_Houses_pressed():
	get_tree().change_scene("res://Scenes/store_residence.tscn")

#goes back to bedroom
func _on_Exit_pressed():
	Global.change_position(680,600)
	get_tree().change_scene("res://Scenery/bedroom.tscn")

#goes back to store main page
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")
