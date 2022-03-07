extends KinematicBody2D

var dialogo = false
onready var sprite : Sprite = get_node("Sprite")

#textures for sprite
var texture_male = preload("res://Imagens/Tails.png")
var texture_female = preload("res://Imagens/Niko.png")

func _ready():
	#switch_texture()
	print(Global.player_name)


func _physics_process(delta):
	var velocidade = Vector2.ZERO # Set default zero velocity

	# Calc move vector based on key input
	var inputVectors = Vector2(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")) # Get input vector

	if inputVectors.x > 0.0: # If input is right
		velocidade.x = 6.0 # Set velocity to right
		$Sprite/AnimationPlayer.play("andando direita") # Play animation
	elif inputVectors.x < 0.0: # If input is left
		velocidade.x = -6.0 # Set velocity to left
		$Sprite/AnimationPlayer.play("andando esquerda") # Play animation

	if inputVectors.y > 0.0: # If input is down
		velocidade.y = 6.0 # Set velocity to down
		$Sprite/AnimationPlayer.play("andando baixo") # Play animation
	elif inputVectors.y < 0.0: # If input is up
		velocidade.y = -6.0 # Set velocity to up
		$Sprite/AnimationPlayer.play("andando cima") # Play animation

	if velocidade.x == 0.0 and velocidade.y == 0.0: # If no input
		$Sprite/AnimationPlayer.play("RESET") # Play animation

	move_and_collide(velocidade) # Move and collide with world

func switch_texture():
	if  (Global.gender):
		sprite.set_texture(texture_female)
	else:
		sprite.set_texture(texture_male)
