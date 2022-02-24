extends KinematicBody2D

var dialogo = false
var velocidade = Vector2.ZERO
onready var sprite : Sprite = get_node("Sprite")

#textures for sprite
var texture_male = preload("res://Imagens/Tails.png")
var texture_female = preload("res://Imagens/Niko.png")

func _ready():
	#switch_texture()
	print(Global.player_name)


func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocidade.x = 6
		$Sprite/AnimationPlayer.play("andando")
	elif Input.is_action_pressed("ui_left"):
		velocidade.x = -6
		$Sprite/AnimationPlayer.play("andando esq")
	else:
		velocidade.x = 0
	if Input.is_action_pressed("ui_down"):
		velocidade.y = 6
		$Sprite/AnimationPlayer.play("andando baixo")
	elif Input.is_action_pressed("ui_up"):
		velocidade.y = -6
		$Sprite/AnimationPlayer.play("teste")
	else:
		velocidade.y = 0
	move_and_collide(velocidade)

func switch_texture():
	if  (Global.gender):
		sprite.set_texture(texture_female)
	else:
		sprite.set_texture(texture_male)
