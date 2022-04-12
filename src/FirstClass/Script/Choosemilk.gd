extends Node2D

# Market minigame choise system
# It displays on the screen products prices
# and adds to the total fee the iten price
# Then it checks if the choise was right or wrong
# for then change the scenes

var milk = [3.00,4.70, 5.25]

func _ready():
	for i in range(1,4):
		milk[i-1] += Global.inflation
		get_node("RichTextLabel" + str(i)).bbcode_text = str("[center]%.2f" % float(milk[i-1]))

func _on_Vmilk_pressed():
	Global.total += 5.25
	Global.products[0] = "res://assets/milk_pink.png"
	get_tree().change_scene("res://Scenes/Market_quiz_right_answer.tscn")

func _on_Xmilk_pressed():
	Global.total += 3
	Global.products[0] = "res://assets/milk_blue.png"
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
	
func _on_xmilk_pressed():
	Global.total += 4.70
	Global.products[0] = "res://assets/milk_yellow.png"
	get_tree().change_scene("res://Scenes/wrongChooseMilk.tscn")
