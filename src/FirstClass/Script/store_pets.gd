extends Node2D

var dog : float = 3200.00
var cat : float = 2200.00
var pet_3 : float = 500.00
var pet_4 : float = 700.00

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " , (dog * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ " ,(cat * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " ,(pet_3 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " ,(pet_4 * (Global.inflation/100))).pad_zeros(2))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ "  , (dog)).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ "  , (cat)).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ "  , (pet_3)).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ "  , (pet_4)).pad_zeros(2))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()


func _on_Button_dog_pressed():
	Global.total_store += 3200.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_cat_pressed():
	Global.total_store += 5200.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_pet_3_pressed():
	Global.total_store += 500.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_pet_4_pressed():
	Global.total_store += 700.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
