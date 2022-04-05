extends KinematicBody2D

# Script for the Player base movements and actions
# It allows the character to move in the four axes

var dialogue = false
onready var sprite : Sprite = get_node("Sprite")

#textures for sprite
var texture_male = preload("res://assets/player2.png")
var texture_female = preload("res://assets/Player1.png")

func _ready():
	if Global.gender == false:
		$Sprite_bunny.visible = false
	else:
		$Sprite_wolf.visible = false
	#switch_texture()
	#print(Global.player_name)
	self.position.x = Global.position.x
	self.position.y = Global.position.y
	Global.transition = false


func _physics_process(delta):
	var velocity = Vector2.ZERO # Set default zero velocity

	# Calc move vector based on key input
	var inputVectors = Vector2(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")) # Get input vector

	if inputVectors.x > 0.0: # If input is right
		velocity.x = 6.0 # Set velocity to right
		if Global.gender == true:
			$Sprite_bunny/AnimationBunny.play("andando direita") # Play animation
	
		else:
			$Sprite_wolf/AnimationWolf.play("direita")
		
	if inputVectors.x < 0.0: # If input is left
		velocity.x = -6.0 # Set velocity to left
		if Global.gender == true:
			$Sprite_bunny/AnimationBunny.play("andando esquerda") # Play animation
		else:
			$Sprite_wolf/AnimationWolf.play("esquerda")

	if inputVectors.y > 0.0: # If input is down
		velocity.y = 6.0 # Set velocity to down
		if Global.gender == true:
			$Sprite_bunny/AnimationBunny.play("andando baixo") # Play animation
		else:
			$Sprite_wolf/AnimationWolf.play("baixo")
		
	if inputVectors.y < 0.0: # If input is up
		velocity.y = -6.0 # Set velocity to up
		if Global.gender == true:
			$Sprite_bunny/AnimationBunny.play("andando cima") # Play animation
		else:
			$Sprite_wolf/AnimationWolf.play("cima")

	if velocity.x == 0.0 and velocity.y == 0.0: # If no input
		if Global.gender == true:
			$Sprite_bunny/AnimationBunny.play("RESET") # Play animation
		else:
			$Sprite_wolf/AnimationWolf.play("RESET")

	move_and_collide(velocity) # Move and collide with world

func switch_texture():
	if  (Global.gender):
		sprite.set_texture(texture_female)
		pass
	else:
		sprite.set_texture(texture_male)
		pass
