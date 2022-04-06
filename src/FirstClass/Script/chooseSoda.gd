extends Node2D

var soda = [4.00, 2.00, 2.30]

func _ready():
	for i in range(1,4):
		soda[i-1] += Global.inflation
		get_node("RichTextLabel" + str(i)).bbcode_text = str("[center]%.2f" % float(soda[i-1]))

func _on_rigthSoda_pressed():
	Global.total += 4
	Global.products[2] = "res://assets/sodaPurple.png"
	get_tree().change_scene("res://Scenes/rightSodaChoose.tscn")

func _on_wrongSoda_pressed():
	Global.total += 2
	Global.products[2] = "res://assets/sodaRed.png"
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
	
func _on_wrongSoda2_pressed():
	Global.total += 2.30
	Global.products[2] = "res://assets/sodaGreen.png"
	get_tree().change_scene("res://Scenes/wrongChooseSoda.tscn")
