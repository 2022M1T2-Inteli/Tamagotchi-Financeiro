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
	$Investiment2.visible = false
	$Button2.visible = false
	$Player_certo.position = Vector2(-980,200)
	##$"/root/Musicfx".stop()
	#$setapreta7/setapreta7.play("seta7")
	$setapreta9/setapreta9.play("seta9")

	if !Global.bank1:
		$Player_certo.visible = false
		$Button_bank1.visible = true
		$Button_bank1/BankEmployee.visible = true
		$Button_bank1/InstructionsBank2.visible = true
	else:
		$Player_certo.visible = true
		$Joystick/Control/question_button/AnimationPlayer.play("aviso")
		
func _on_Button_bank1_pressed():
	$Button_bank1.visible = false
	$Button_bank1/InstructionsBank2.visible = false
	$Button_bank1/BankEmployee.visible = false
	$Button_bank2.visible = true
	$Button_bank2/BankGuilherme.visible = true
	$Button_bank2/InstructionBank1.visible = true

func _on_Button_bank2_pressed():
	$Button_bank2.visible = false
	$Button_bank2/InstructionBank1.visible = false
	$Button_bank2/BankGuilherme.visible = false
	$Button_bank3.visible = true
	$Button_bank3/InstructionBank.visible = true
	$Button_bank3/Investiment.visible = true
	$Button_bank3/FundoPreto.visible = true
	
	
func _on_Button_bank3_pressed():
	$Button_bank3.visible = false
	$Button_bank3/InstructionBank.visible = false
	$Button_bank3/Investiment.visible = false
	$Button_bank3/FundoPreto.visible = false
	$Player_certo.visible = true
	Global.bank1 = true

func _on_Button_pressed():
	$Investiment2.visible = true
	$Player_certo.visible = false
	$Button2.visible = true
	$FundoPreto.visible = true

func _on_Button2_pressed():
	$Investiment2.visible = false
	$Player_certo.visible = true
	$Button2.visible = false
	$FundoPreto.visible = false
