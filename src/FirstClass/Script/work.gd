extends Area2D


#function to show job options
func _on_Area2D2_body_entered(body):
	if body.name == "Player_certo":
		$FundoPreto.visible = true
		$CargosTrabalho.visible = true
		$Button_1.visible = true
		$Player_certo.visible = false
