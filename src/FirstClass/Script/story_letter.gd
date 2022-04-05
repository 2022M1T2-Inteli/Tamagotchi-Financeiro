extends Node2D


var player_character_wolf = ("res://Sprites wolf/frame 0.png")
var player_character_bunny = ("res://Scenes/Player_certo.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
#	if Global.gender == false:
#		var player_character = load(player_character_wolf).instance()
#		player_character.position = Vector2(420,549)
#		add_child(player_character)
#
#	if Global.gender == true:
#		var player_character = load(player_character_bunny).instance()
#		player_character.position = Vector2(420,549)
#		add_child(player_character)
	$Exc/AnimationPlayer.play("excla2")

func _on_Area2D_body_entered(body):
	$Exc.visible = false
	$Story2.visible = true
	$FundoPreto.visible = true
	$Player_certo.visible = false
	$Timer.start()

func _on_Timer_timeout():
	$Button.visible = true
	#get_tree().change_scene("res://Scenes/cellphone_story.tscn")


func _on_Button_pressed():
	if($Button.visible == false):
		pass # Replace with function body.
	else:
		get_tree().change_scene("res://Scenes/cellphone_story.tscn")
