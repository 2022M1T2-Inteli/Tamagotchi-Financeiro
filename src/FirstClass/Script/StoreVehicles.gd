extends Node2D

var Bicycle : float = 300.00
var Eletric_Bike : float = 1300.00
var Motorcycle : float = 2100.00
var Standard_Car : float = 8000.00
var Deluxe_Car : float = 32000.00

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " ,(Bicycle * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ " ,(Eletric_Bike * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " ,(Motorcycle * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " ,(Standard_Car * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ " ,(Deluxe_Car * (Global.inflation/100))).pad_zeros(2))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ "  , (Bicycle)).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ "  , (Eletric_Bike)).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ "  , (Motorcycle)).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ "  , (Standard_Car)).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ "  , (Deluxe_Car)).pad_zeros(2))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	$RichTextLabel4.update()

func _on_Bicycle_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Eletric_Bike_pressed():
	Global.total_store += 1300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Motorcycle_pressed():
	Global.total_store += 2100.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Standard_Car_pressed():
	Global.total_store += 8000.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Deluxe_Car_pressed():
	Global.total_store += 32000.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
