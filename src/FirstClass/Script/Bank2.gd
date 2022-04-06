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
	$Button3/Investiment2.visible = false
	$Button3/Button2.visible = false
	$Player_certo.position = Vector2(-980,200)
	$setapreta9/setapreta9.play("seta9")

	if !Global.bank1:
		$Player_certo.visible = false
		$Button_bank1.visible = true
		$Button_bank1/BankEmployee.visible = true
		$Button_bank1/InstructionsBank2.visible = true
	else:
		$Player_certo.visible = true
		$Joystick/Control/question_button/AnimationPlayer.play("aviso")
	
	if Global.recordsPrice.size() > 0:
		for i in Global.recordsPrice:
			$ItemList.add_item("Mercado $" + str(i))
			$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
			$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)
			
	if Global.recordsBank.size() > 0:
		for i in Global.recordsBank:
			if(i > 0):
				$ItemList.add_item("Deposito $" + str(i))
				$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.green)
				$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)

			else:
				$ItemList.add_item("Saque $" + str(i))
				$ItemList.set_item_custom_fg_color($ItemList.get_item_count() - 1, Color.red)
				$ItemList.set_item_selectable($ItemList.get_item_count() - 1, false)
		
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
	$Button3/Investiment2.visible = true
	$Player_certo.visible = false
	$Button3/Button2.visible = true
	$Button3/FundoPreto.visible = true
	$ItemList.visible = true
	$Button3.visible = true

func _on_Button2_pressed():
	$Button3/Investiment2.visible = false
	$Player_certo.visible = true
	$Button3/Button2.visible = false
	$Button3/FundoPreto.visible = false

func _on_Button3_pressed():
	$Button3.visible = false
	$Button3/FundoPreto.visible = false
	$Button3/Investiment2.visible = false
	$ItemList.visible = false
	$Player_certo.visible = true
