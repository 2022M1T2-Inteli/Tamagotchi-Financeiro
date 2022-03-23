extends Node2D

var Book_I : float = 500.00
var Book_II : float = 900.00
var Book_III : float = 1400.00
var Book_IV : float = 2700.00
var Book_V : float = 4200.00

func _ready():
	if Global.day >= 2:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ " ,(Book_I * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel2.bbcode_text= (str ("[center]R$ " ,(Book_II * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ " ,(Book_III * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ " ,(Book_IV * (Global.inflation/100))).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ " ,(Book_V * (Global.inflation/100))).pad_zeros(2))
	else:
		$RichTextLabel1.bbcode_text = (str ("[center]R$ "  , (Book_I)).pad_zeros(2))
		$RichTextLabel2.bbcode_text = (str ("[center]R$ "  , (Book_II)).pad_zeros(2))
		$RichTextLabel3.bbcode_text = (str ("[center]R$ "  , (Book_III)).pad_zeros(2))
		$RichTextLabel4.bbcode_text = (str ("[center]R$ "  , (Book_IV)).pad_zeros(2))
		$RichTextLabel5.bbcode_text = (str ("[center]R$ "  , (Book_V)).pad_zeros(2))
	
	$RichTextLabel1.update()
	$RichTextLabel2.update()
	$RichTextLabel3.update()
	$RichTextLabel4.update()
	$RichTextLabel4.update()

func _on_Book_I_pressed():
	Global.total_store += 500.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_II_pressed():
	Global.total_store += 900.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_III_pressed():
	Global.total_store += 1400.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_IV_pressed():
	Global.total_store += 2700.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")


func _on_Book_V_pressed():
	Global.total_store += 4200.00
	get_tree().change_scene("res://Scenes/StoreCart.tscn")
