extends KinematicBody2D

# Script for the Player base movements and actions
# It allows the character to move in the four axes

var dialogue = false
onready var sprite : Sprite = get_node("Sprite")

#textures for sprite
var texture_male = preload("res://assets/Tails.png")
var texture_female = preload("res://assets/Niko.png")

func _ready():
	#switch_texture()
	print(Global.player_name)


func _physics_process(delta):
	var velocity = Vector2.ZERO # Set default zero velocity

	# Calc move vector based on key input
	var inputVectors = Vector2(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")) # Get input vector

	if inputVectors.x > 0.0: # If input is right
		velocity.x = 6.0 # Set velocity to right
		$Sprite/AnimationPlayer.play("andando direita") # Play animation
	elif inputVectors.x < 0.0: # If input is left
		velocity.x = -6.0 # Set velocity to left
		$Sprite/AnimationPlayer.play("andando esquerda") # Play animation

	if inputVectors.y > 0.0: # If input is down
		velocity.y = 6.0 # Set velocity to down
		$Sprite/AnimationPlayer.play("andando baixo") # Play animation
	elif inputVectors.y < 0.0: # If input is up
		velocity.y = -6.0 # Set velocity to up
		$Sprite/AnimationPlayer.play("andando cima") # Play animation

	if velocity.x == 0.0 and velocity.y == 0.0: # If no input
		$Sprite/AnimationPlayer.play("RESET") # Play animation

	move_and_collide(velocity) # Move and collide with world

func switch_texture():
	if  (Global.gender):
		sprite.set_texture(texture_female)
	else:
		sprite.set_texture(texture_male)
