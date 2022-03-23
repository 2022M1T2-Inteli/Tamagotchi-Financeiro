extends Node2D


func _ready():
	pass


func _on_Book_I_pressed():
	Global.store_product_index = "res://assets/Book_I.png"
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_II_pressed():
	Global.store_product_index = "res://assets/Book_II.png"
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_III_pressed():
	Global.store_product_index = ""
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_IV_pressed():
	Global.store_product_index = ""
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_V_pressed():
	Global.store_product_index = ""
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
