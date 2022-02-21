extends KinematicBody2D

var dialogo = false
var velocidade = Vector2.ZERO
onready var sprite : Sprite = get_node("Sprite")

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
	
