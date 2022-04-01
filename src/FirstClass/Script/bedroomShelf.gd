extends Node2D

var book = 0

func _ready():
	$Sprite.visible = false
	$Sprite2.visible = false
	$Sprite3.visible = false
	$Sprite4.visible = false
	$Sprite5.visible = false 
	$Button2/Continuar.visible = false


func _on_Button_pressed():
	if (StoreManagement.products[0][0]):
		$Button3.visible = false
		$Sprite.visible = true
		book = 1
		$Button2/Continuar.visible = true

func _on_Button2_pressed():
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
		$Button2/Continuar.visible = false 	
		$Button3.visible = true

func _on_Button3_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")
