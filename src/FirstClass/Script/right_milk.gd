extends Area2D

var jogo
var grav : int = 980
var velocidade = 450

func _ready():
	jogo = get_tree().current_scene
	set_process(true)
	
func _process(delta):
	set_position(get_position() + Vector2(0, 1) * velocidade * delta)


func _on_Area2D_body_entered(body):
	
	if (body.name == "Player_certo"):
		$RightFX.play()
		jogo.contagem_score()
		jogo.verificar()
		$Lll.visible = false

#func _on_RightFX_finished():
	#queue_free()
	#jogo.verificar()
	#jogo.contagem_score()
