extends KinematicBody2D

# Script for the Player base movements and actions
# It allows the character to move in the four axes

var dialogue = false
onready var sprite : Sprite = get_node("Sprite")

#textures for sprite
var texture_male = preload("res://assets/spritesWolf.png")
var texture_female = preload("res://assets/Player.png")

#function to change sprite based on player choise. 
func _ready():
	if Global.gender == false:
		$Sprite_Bunny.visible = false
		$SpriteWolf_Purple.visible = false
	else:
		$Sprite_Wolf.visible = false
		$SpriteWolf_Purple.visible = false
	if Global.purple == true:
		$Sprite_Bunny.visible = false
		$Sprite_Wolf.visible = false
		$SpriteWolf_Purple.visible = true
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
			$Sprite_Bunny/Animation_Bunny.play("andando direita") # Play animation
		else:
			$Sprite_Wolf/Animation_Wolf.play("dir")
		if Global.purple == true:
			$SpriteWolf_Purple/AnimWolf_Purple.play("pdir")
	elif inputVectors.x < 0.0: # If input is left
		velocity.x = -6.0 # Set velocity to left
		if Global.gender == true:
			$Sprite_Bunny/Animation_Bunny.play("andando esquerda") # Play animation
		else:
			$Sprite_Wolf/Animation_Wolf.play("esq")
		if Global.purple == true:
			$SpriteWolf_Purple/AnimWolf_Purple.play("pesq")

	if inputVectors.y > 0.0: # If input is down
		velocity.y = 6.0 # Set velocity to down
		if Global.gender == true:
			$Sprite_Bunny/Animation_Bunny.play("andando baixo") # Play animation
		else:
			$Sprite_Wolf/Animation_Wolf.play("baixo")
		if Global.purple == true:
			$SpriteWolf_Purple/AnimWolf_Purple.play("pbaixo")
	
	elif inputVectors.y < 0.0: # If input is up
		velocity.y = -6.0 # Set velocity to up
		if Global.gender == true:
			$Sprite_Bunny/Animation_Bunny.play("andando cima") # Play animation
		else:
			$Sprite_Wolf/Animation_Wolf.play("cima")
		if Global.purple == true:
			$SpriteWolf_Purple/AnimWolf_Purple.play("pcima")

	if velocity.x == 0.0 and velocity.y == 0.0: # If no input
		if Global.gender == true:
			$Sprite_Bunny/Animation_Bunny.play("RESET") # Play animation
		else:
			$Sprite_Wolf/Animation_Wolf.play("RESET")
		if Global.purple == true:
			$SpriteWolf_Purple/AnimWolf_Purple.play("RESET")

	move_and_collide(velocity) # Move and collide with world

