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
	if Global.recordsInvest.size() >= 1:
		for i in Global.recordsInvest:
			$Button3/ItemList.add_item("Poupança $" + str(i))
			$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
			$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
		if Global.recordsInvest.size() >= 2:
			for i in Global.recordsInvest:
					$Button3/ItemList.add_item("CDB $" + str(i))
					$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
					$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
			if Global.recordsInvest.size() >= 3:
				for i in Global.recordsInvest:
						$Button3/ItemList.add_item("Tesouro Direto $" + str(i))
						$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
						$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)		
				if Global.recordsInvest.size() >= 4:
					for i in Global.recordsInvest:
							$Button3/ItemList.add_item("Debênture $" + str(i))
							$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
							$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
					if Global.recordsInvest.size() >= 5:
						for i in Global.recordsInvest:
								$Button3/ItemList.add_item("Fundos Imobiliários $" + str(i))
								$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
								$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
						if Global.recordsInvest.size() >= 6:
							for i in Global.recordsInvest:
									$Button3/ItemList.add_item("Fundo - Multi Mercado $" + str(i))
									$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
									$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
							if Global.recordsInvest.size() >= 7:
								for i in Global.recordsInvest:
										$Button3/ItemList.add_item("Fundo - Ações $" + str(i))
										$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
										$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
								if Global.recordsInvest.size() >= 8:
									for i in Global.recordsInvest:
											$Button3/ItemList.add_item("Fundo - Ações de alto risco $" + str(i))
											$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
											$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
									if Global.recordsInvest.size() >= 9:
										for i in Global.recordsInvest:
												$Button3/ItemList.add_item("Ações de baixo risco $" + str(i))
												$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
												$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
										if Global.recordsInvest.size() >= 10:
											for i in Global.recordsInvest:
													$Button3/ItemList.add_item("Ações de alto risco $" + str(i))
													$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
													$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
											if Global.recordsInvest.size() >= 11:
												for i in Global.recordsInvest:
														$Button3/ItemList.add_item("Day-trade $" + str(i))
														$Button3/ItemList.set_item_custom_fg_color($Button3/ItemList.get_item_count() - 1, Color.green)
														$Button3/ItemList.set_item_selectable($Button3/ItemList.get_item_count() - 1, false)
					
				
				
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
	$Button3/ItemList.visible = true
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
	$Button3/ItemList.visible = false
	$Player_certo.visible = true
