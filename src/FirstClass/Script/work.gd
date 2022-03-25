extends Area2D

func _ready():
	pass

func _on_Area2D2_body_entered(body):
	if body.name == "Player_certo":
		$FundoPreto.visible = true
		$CargosTrabalho.visible = true
		get_tree().paused = true
