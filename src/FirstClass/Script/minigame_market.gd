extends Node2D

# Code to the milk minigame. It generates random numbers
# that are products index. Based on the choosen number,
# a different product will appear at the top of the screen
# and will fall off. Different products have different properties
# that triggers once it collides with the Player.

var score = 0
var error = 0
var red_milk = preload("res://Scenes/right_milk.tscn")
var blue_milk = preload("res://Scenes/wrong_milk.tscn")
var yellow_milk = preload("res://Scenes/yellow_milk.tscn")


func _ready():
	$HUD/Score.text = "Score: " + str(score)
	$BackgroundFX.play()
	#$"/root/Musicfx".stop()

func _process(delta):
	pass	

func contagem_score():
	score += 1
	$HUD/Score.text = "Score: " + str(score)

func errado():
	score -= 1
	error += 1
	$HUD/Score.text = "Score: " + str(score)
	
func verificar():
	if (error == 3):
		get_tree().change_scene("res://Scenes/loseMinigameMilk.tscn")
	elif(score == 20):
		get_tree().change_scene("res://Scenes/winMilkMinigame.tscn")
		Global.happiness +=1


func _on_Timer_timeout():
	var rng = RandomNumberGenerator.new()
	var new_node
	rng.randomize()
	var choose_milk = rng.randi_range(0,2)
	if choose_milk == 0:
		new_node = red_milk.instance()
	elif choose_milk == 1:
		new_node = blue_milk.instance()
	else:
		new_node = yellow_milk.instance()
	var rndX = rng.randi_range(0, 1280)
	new_node.position = Vector2(rndX,0)
	add_child(new_node)
