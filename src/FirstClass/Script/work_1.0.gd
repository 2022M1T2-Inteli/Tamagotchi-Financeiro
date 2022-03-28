extends Node2D

var score = 0
var erro = 0
var start = false
var verified = [false, false, false]
var counter = 0
var past_timer = 0
var current_timer = 0

func _ready():
	$Esteiraa/AnimationPlayer.play("esteira")
	$RichTextLabel.bbcode_text = "[center]ACEITAR"
	$HUD/Score.text = "Score: " + str(score)
	ValoresProdutos()
	ValorProdutosMercado()
	$music.play()

var next = 62
var new_node = null 
onready var windowSize = get_viewport().size

var produtos_trabalho
var rng1

var mochila = preload("res://assets/mochila.png")
var impressora = preload("res://assets/impressora.png")
var televisao = preload("res://assets/televisão.png")
var computador = preload("res://assets/computador.png")
var cadeira = preload("res://assets/cadeira.png")
var abajur = preload("res://assets/abajur.png")
var lixeira = preload("res://assets/lixeira.png")
var ferro = preload("res://assets/ferro_de_passar.png")
var ventilador = preload("res://assets/ventilador.png")
var balde = preload("res://assets/balde.png")
var panela = preload("res://assets/panela.png")
var bola = preload("res://assets/bola.png")
	
var produtos = [mochila,impressora,televisao,computador,cadeira,abajur,lixeira,ferro,ventilador,balde,panela,bola]

func _process(delta):
	if(!start):
		print(current_timer - past_timer)
		current_timer += delta
		if(Input.is_action_pressed("ui_accept") && current_timer - past_timer > 1):
			verified[counter] = true
			if(counter == 0):
				get_node("62").visible = false
				get_node("63").visible = true
			elif(counter == 1):
				get_node("63").visible = false
				get_node("64").visible = true
			else:
				get_node("64").visible = false
			counter+=1
			past_timer = current_timer
		if(verified[0] && verified[1] && verified[2]):
			start = true
			$Timer.start()
	var windowSizeLocal = get_viewport().size
	if new_node && start:
		if new_node.position.x >= -300:
			new_node.position.x -= 14

func _on_Timer_timeout():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var produtos_trabalho = rng.randi_range(0,11)
	new_node = Sprite.new()
	new_node.texture = produtos[produtos_trabalho]
	new_node.scale = Vector2(0.3,0.3)
	new_node.position.x = windowSize.x + new_node.texture.get_width()
	new_node.position.y = 480
	new_node.visible = true
	add_child(new_node)
	$Boom.start()
	next = true
	ValoresProdutos()
	ValorProdutosMercado()

func ValoresProdutos():
	var rng2 = RandomNumberGenerator.new()
	rng2.randomize()
	var produtos_trabalho_mercado = rng2.randi_range(100,150)
	$RichTextLabel5.bbcode_text = str ("[center]", produtos_trabalho_mercado)
	
func ValorProdutosMercado():
	rng1 = RandomNumberGenerator.new()
	rng1.randomize()
	produtos_trabalho = rng1.randi_range(100,150)
	$RichTextLabel2.bbcode_text = str ("[center]", produtos_trabalho)
	
func contagem_score():
	score += 1
	$HUD/Score.text = "Score: " + str(score)
	$right.play()

func errado():
	score -= 1
	erro += 1
	$HUD/Score.text = "Score: " + str(score)
	$wrong.play()
	
func verificar():
	if (erro == 5):
		get_tree().change_scene("res://Scenes/losswork.tscn")
	elif (score == 10):
		get_tree().change_scene("res://Scenes/WinWork.tscn")

func _on_Button_yes_pressed():
	#new_node.queue_free()
	#new_node = null
	if new_node:
		new_node.visible = false
		next = true
		if int ($RichTextLabel5.text) <=  int($RichTextLabel2.text):
			contagem_score()
		else:
			errado()
		verificar()


func _on_Boom_timeout():
	new_node.queue_free()
	new_node = null
	next = true
	ValoresProdutos()
	ValorProdutosMercado()
