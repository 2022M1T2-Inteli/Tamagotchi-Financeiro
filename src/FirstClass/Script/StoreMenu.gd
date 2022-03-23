extends CanvasLayer

var product

func _ready():
	pass

func _on_Home_pressed():
	get_tree().change_scene("res://Scenes/StoreHome.tscn")


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


func _on_Exit_pressed():
	Global.change_position(680,600)
	get_tree().change_scene("res://Scenery/bedroom.tscn")

func addToCart(item):
	product = item

func showItem():
	return str(product)
