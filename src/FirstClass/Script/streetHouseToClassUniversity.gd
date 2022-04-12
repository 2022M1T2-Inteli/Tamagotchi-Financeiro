extends Area2D

# Script that change from the Steet Scene to the University
# It allows the player to enter the University only if they
# Didn't visit it in that day. A Warning is also sent to the
# Player's mail in case they already got the daily class

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _ready():

	var image = Image.new()
	image.load("res://assets/EduFin App (3).png")
	var texture = ImageTexture.new()
	texture.create_from_image(image, 0)
	get_node("Warning").texture = texture
	get_node("Warning").position = Vector2(0,-300)
	get_node("Warning").scale = Vector2(0.5, 0.5)
	$Warning.visible = false

func _on_Goalscene2_body_entered(body):
	if body.name == "Player_certo" && !Global.school:
		Global.transition = true
		Global.current_scene = "res://Scenery/classUniversity.tscn"
		Global.change_position(177, 674)
		changer.change_scene(path)
	elif Global.school:
		$Timer.start()
		$Warning.visible = true
		get_parent().get_node("Joystick/Control/Panel/Any_tasks_active").text += "\nVocê já foi à faculdade hoje! Volte amanhã para mais conteúdos"


func _on_Timer_timeout():
	$Warning.visible = false


func _on_streetHouseToClassUniversity_body_exited(body):
	$Warning.visible = false
