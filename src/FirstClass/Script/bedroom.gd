extends Node2D

var celltest = preload ("res://Cellphone/Cellphone.tscn")
var new_node

func _ready():
	for i in range(1,5):
		get_node(str(i)).visible = StoreManagement.products[3][i-1]
	for i in 5:
		if(StoreManagement.products[0][i]):
			$Funcao_block.visible = false
		if(StoreManagement.products[2][i]):
			$Funcao_block2.visible = false
	$Player_certo.visible = false
	$"/root/Ambient".play()
	if Global.email == true:
		$Joystick/Control/question_button/AnimationPlayer.play("aviso")
	if !Global.letter:
		$Button_Instructions1/Instructions1.visible = true
		$Button_Instructions1.visible = true
	else:
		$Player_certo.visible = true

func _on_Button_Instructions1_pressed():
	$Button_Instructions2/Instructions2.visible = true
	$Button_Instructions2.visible = true
	$Button_Instructions1/Instructions1.visible = false
	$Button_Instructions1.visible = false

func _on_Button_Instructions2_pressed():
	$Button_Instructions2/Instructions2.visible = false
	$Button_Instructions2.visible = false
	$Button_Instructions3/Instructions3.visible = true
	$Button_Instructions3.visible = true
	
func _on_Button_Instructions3_pressed():
	$Button_Instructions3/Instructions3.visible = false
	$Button_Instructions3.visible = false
	$Button_Instructions4/Instructions4.visible = true
	$Button_Instructions4.visible = true

func _on_Button_Instructions4_pressed():
	$Button_Instructions4/Instructions4.visible = false
	$Button_Instructions4.visible = false
	$Button_Instructions5/Instructions5.visible = true
	$Button_Instructions5.visible = true

func _on_Button_Instructions5_pressed():
	$Button_Instructions5/Instructions5.visible = false
	$Button_Instructions5.visible = false
	$Button_Instructions6/Instructions6.visible = true
	$Button_Instructions6.visible = true

func _on_Button_Instructions6_pressed():
	$Button_Instructions6/Instructions6.visible = false
	$Button_Instructions6.visible = false
	$Button_Instructions7/Instructions7.visible = true
	$Button_Instructions7.visible = true
	
func _on_ComputerArea_body_entered(body):
	if body.name == "Player_certo":
		get_tree().change_scene("res://Scenes/StoreHome.tscn")


func _on_shelfBooks_body_entered(body):
	if body.name == "Player_certo" && (StoreManagement.products[0][0] || StoreManagement.products[0][1] || StoreManagement.products[0][2] || StoreManagement.products[0][3] || StoreManagement.products[0][4]):
		get_tree().change_scene("res://Scenes/bedroomShelf.tscn")
	else:
		pass


func _on_Button_Instructions7_pressed():
	$Button_Instructions7/Instructions7.visible = false
	$Button_Instructions7.visible = false
	$Joystick/Control/question_button/AnimationPlayer.play("aviso")
	$Player_certo.visible = true
	Global.letter = true 
