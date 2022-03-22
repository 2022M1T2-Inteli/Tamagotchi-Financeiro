extends Node2D


func _ready():
	pass

func _on_Bicycle_pressed():
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Eletric_Bike_pressed():
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Motorcycle_pressed():
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Standard_Car_pressed():
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Deluxe_Car_pressed():
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
