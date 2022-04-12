extends Node2D

# Market minigame choise system
# It displays on the screen products prices
# and adds to the total fee the iten price
# Then it checks if the choise was right or wrong
# for then change the scenes

var rice = [18.00, 23.50, 12.00]

func _ready():
	for i in range(1,4):
		rice[i-1] += Global.inflation
		get_node("RichTextLabel" + str(i)).bbcode_text = str("[center]%.2f" % float(rice[i-1]))


func _on_rightRice_pressed():
	Global.total += 23.50
	Global.products[1] = "res://assets/riceYellow2.png"
	get_tree().change_scene("res://Scenes/startminigameRice.tscn")

func _on_wrongRice_pressed():
	Global.total += 18
	Global.products[1] = "res://assets/riceBlue2.png"
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")

func _on_wrongRIce2_pressed():
	Global.total += 12
	Global.products[1] = "res://assets/riceRed2.png"
	get_tree().change_scene("res://Scenes/wrongChooseRice.tscn")
