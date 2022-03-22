extends Node2D

var dog = 1500.00
var cat = 200
var pet_3 = 300
var pet_4 = 20

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.text = str ("R$ ", (dog * (Global.inflation/100)))
		$RichTextLabel2.text = str ("R$ ",(cat * (Global.inflation/100)))
		$RichTextLabel3.text = str ("R$ ",(pet_3 * (Global.inflation/100)))
		$RichTextLabel4.text = str ("R$ ",(pet_4 * (Global.inflation/100)))
		
		$RichTextLabel1.update()
		$RichTextLabel2.update()
		$RichTextLabel3.update()
		$RichTextLabel3.update()
		$RichTextLabel4.update()
		
	else:
		$RichTextLabel1.text = str ("R$ " , (dog))
		$RichTextLabel2.text = str ("R$ " , (cat))
		$RichTextLabel3.text = str ("R$ " , (pet_3))
		$RichTextLabel4.text = str ("R$ " , (pet_4))
		
		$RichTextLabel1.update()
		$RichTextLabel2.update()
		$RichTextLabel3.update()
		$RichTextLabel4.update()

func _on_Button_home_pressed():
	pass # Replace with function body.


func _on_Button_books_pressed():
	pass # Replace with function body.


func _on_Button_tshirt_pressed():
	get_tree().change_scene("res://Scenes/store_t-shirt.tscn")


func _on_Button_pets_pressed():
	get_tree().change_scene("res://Scenes/store_pets.tscn")


func _on_Button_residence_pressed():
	get_tree().change_scene("res://Scenes/store_residence.tscn")


func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")


func _on_Button_cars_pressed():
	pass # Replace with function body.


func _on_Button_dog_pressed():
	pass # Replace with function body.


func _on_Button_cat_pressed():
	pass # Replace with function body.


func _on_Button_pet_3_pressed():
	pass # Replace with function body.


func _on_Button_pet_4_pressed():
	pass # Replace with function body.
