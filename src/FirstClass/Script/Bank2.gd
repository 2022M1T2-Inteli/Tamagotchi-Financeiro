extends Node2D

func _process(delta):
	$Exc/AnimationPlayer.play("excla2")
	$Exc2/AnimationPlayer.play("excla2")
	#stops exclamation:
	if Global.excla2 == true:
		$Exc.visible = false
		$Exc2.visible = true
	if Global.excla3 == true:
		$Exc2.visible = false

func _ready():
	$Exc2.visible = false
	$Player_certo.position = Vector2(-980,200)
	##$"/root/Musicfx".stop()
	$setapreta7/setapreta7.play("seta7")
	$Ex3/Ex3.play("exclama3")
	
	

func _on_Area2D_body_entered(body):
	pass # Replace with function body.
