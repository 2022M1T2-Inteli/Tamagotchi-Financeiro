extends Node2D

var t_shirt_1 : float = 300.00
var t_shirt_2 : float = 300.00
var t_shirt_3 : float = 300.00
var t_shirt_4 : float = 300.00
var t_shirt_5 : float = 300.00

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " ,(t_shirt_1 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ " ,(t_shirt_2 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " ,(t_shirt_3 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " ,(t_shirt_4 * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ " ,(t_shirt_5 * (Global.inflation/100))).pad_zeros(2))
		
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ "  , (t_shirt_2)).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ "  , (t_shirt_2)).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " , (t_shirt_3)).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ "  , (t_shirt_4)).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ " , (t_shirt_5)).pad_zeros(2))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	$RichTextLabel4.update()
	pass # Replace with function body.

func _on_Button_tshirt_yellow_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_tshirt_black_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
	
func _on_Button_tshirt_purple_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_tshirt_green_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Button_tshirt_pink_pressed():
	Global.total_store += 300.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
