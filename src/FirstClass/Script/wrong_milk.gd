extends Area2D

var jogo
var grav : int = 980
var velocidade = 450

func _ready():
	jogo = get_tree().current_scene
	set_process(true)
	
func _process(delta):
	set_position(get_position() + Vector2(0, 1) * velocidade * delta)


func _on_Blue_Milk_body_entered(body):
	if (body.name == "Player_certo"):
		$Erro2FX.play()
		jogo.errado()
		jogo.verificar()
		$blue_milk.visible = false


#func _on_Erro2FX_finished():
	#queue_free()
