extends Node2D

var house_1 : float = 300.00
var house_2 : float = 1200.00
var house_3 : float = 6000.00
var house_4 : float = 32500.00

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " , (house_1 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ " ,(house_2 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " ,(house_3 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " ,(house_4 * (Global.inflation/100))).pad_zeros(2))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " , (house_1)).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ " , (house_2)).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " , (house_3)).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " , (house_4)).pad_zeros(2))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()


func _on_Button_house_1_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_house_2_pressed():
	Global.total_store += 1200.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_house_3_pressed():
	Global.total_store += 6000.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_house_4_pressed():
	Global.total_store += 32500.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
