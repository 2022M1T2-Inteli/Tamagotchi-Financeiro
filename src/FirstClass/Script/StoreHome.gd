extends Node2D

func _ready():
	pass # Replace with function body.



func _on_HomeRectangle_pressed():
	pass


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
