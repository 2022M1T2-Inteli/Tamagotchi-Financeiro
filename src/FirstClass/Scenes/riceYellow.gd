extends Area2D

var jogo
var grav : int = 980
var velocidade = 250

func _ready():
	jogo = get_tree().current_scene
	set_process(true)
	
func _process(delta):
	set_position(get_position() + Vector2(0, 1) * velocidade * delta)



func _on_Area2D_body_entered(body):
	if (body.name == "Player_certo"):
		queue_free()
		jogo.contagem_score()
		jogo.verificar()
