extends Node2D

var paymentType = null

func _ready():
	$RichTextLabel.bbcode_text = str("[center]R$ ",(Global.total_store))
	pass

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
	Global.total_store += float (get_node("RichTextLabel").text)
	
	if (Global.total_store >= 0) and (Global.money - Global.total_store >= 0) and (paymentType == 0):
		Global.money -= Global.total_store 
		get_tree().change_scene("res://Scenes/StoreEndshop.tscn")
	elif (Global.total_store >= 0) and (Global.digital_money - Global.total_store >= 0) and (paymentType == 1):
		Global.digital_money -= Global.total_store 
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
	
