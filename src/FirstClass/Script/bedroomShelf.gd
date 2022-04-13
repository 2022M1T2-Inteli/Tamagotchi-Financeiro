extends Node2D

var book = 0

#set books to visible based in which one the player bought
func _ready():
	for i in range(0,5):
		get_node("Book_" + str(i)).visible = StoreManagement.products[0][i]
	$Sprite.visible = false
	$Sprite2.visible = false
	$Sprite3.visible = false
	$Sprite4.visible = false
	$Sprite5.visible = false 
	$Button_next_book1.visible = false
	for i in range(0,5):
		if StoreManagement.products[0][i] && Global.actions >=1: 
			$Button.visible = true

#go back to bedroom
func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")
	$Button.visible = false

#open the book
func _on_Book_I_pressed():
	if (StoreManagement.products[0][0]):
		$Button_exit.visible = false
		$Sprite.visible = true
		book = 1
		$Button_next_book1.visible = true
		$Button.visible = false

#pass book pages
func _on_Button_next_book1_pressed():
	if book == 1:
		$Sprite.visible = false
		$Sprite2.visible = true
		book += 1
	elif book == 2:
		$Sprite2.visible = false
		$Sprite3.visible = true
		book +=1
	elif book == 3:
		$Sprite3.visible = false
		$Sprite4.visible = true
		book += 1 
	elif book == 4:
		$Sprite4.visible = false
		$Sprite5.visible = true
		book += 1 
	elif book == 5 :
		$Sprite5.visible = false
		$Button_next_book1.visible = false
		$Button_exit.visible = true

func _on_Book_II_pressed():
	pass # Replace with function body.


func _on_Book_III_pressed():
	pass # Replace with function body.


func _on_Book_IV_pressed():
	pass # Replace with function body.


func _on_Book_V_pressed():
	pass # Replace with function body.

#function for player study and earn knowlodge based in how many books he have
func _on_Button_pressed():
	for i in range(0,5):
		if StoreManagement.products[0][i]  && Global.actions >=1:
			Global.knowledge += 1
			Global.actions -=1 
	pass

