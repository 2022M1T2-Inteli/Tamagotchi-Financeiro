extends Node2D

var score = 0
var erro = 0
var right_milk = preload("res://Scenes/riceYellow.tscn")
var wrong_milk = preload("res://Scenes/riceRed.tscn")
var wrong_milk2 = preload("res://Scenes/riceBlue.tscn")

#var milks = ["res://Scenes/right_milk.tscn", "res://Scenes/wrong_milk.tscn"]
#var screenSize = get_viewport().get_visible_rect().size

func _ready():
#	timer = Timer.new()
#	timer.set_wait_time(2)
#	yield(timer, "timeout")
#	add_child(timer)
	$HUD/Score.text = "Score: " + str(score)

func _process(delta):
	pass	

func contagem_score():
	score += 1
	$HUD/Score.text = "Score: " + str(score)

func errado():
	score -= 1
	erro += 1
	$HUD/Score.text = "Score: " + str(score)
	
func verificar():
	if (erro == 3):
		get_tree().change_scene("res://Scenes/loseMinigameRice.tscn")
	elif (score == 5):
		get_tree().change_scene("res://Scenes/winRiceMinigame.tscn")
		
func _on_Timer_timeout():
	var rng = RandomNumberGenerator.new()
	var new_node
	rng.randomize()
	var choose_milk = rng.randi_range(0,2)
	if choose_milk == 0:
		new_node = right_milk.instance()
	elif choose_milk == 1:
		new_node = wrong_milk.instance()
	else:
		new_node = wrong_milk2.instance()
	var rndX = rng.randi_range(0, 1280)
	#var rndY = rng.randi_range(0, 720)
	#if you want to change something in the node (for example the position here):
	new_node.position = Vector2(rndX,0)
	add_child(new_node)
		

	#pass # Replace with function body.
