extends Node2D

#exclamation indicator
func _process(delta):
	$Exc/AnimationPlayer.play("excla2")
	$Exc2/AnimationPlayer.play("excla2")
	#stops exclamation:
	if Global.excla2 == true:
		$Exc.visible = false
		$Exc2.visible = true
	if Global.excla3 == true:
		$Exc2.visible = false

#brings player investiments into a list
func _ready():
	$RichTextLabel.text = ("poupança = %.2f"  % Investiment.invest_money_savings + "\ncdb = %.2f" % Investiment.invest_money_cdb + "\ntesouro direto = %.2f" % Investiment.invest_money_direct_treasury + "\ndebentures = %.2f" % Investiment.invest_money_debenture + "\nfundo imobiliário = %.2f" % Investiment.invest_money_real_estate_fund + "\nfundo multimercado = %.2f" % Investiment.invest_money_multimarket_fund + "\nfundo de ações = %.2f" % Investiment.invest_money_stock_fund + "\nfundoações de alto risco = %.2f" % Investiment.invest_money_high_risk_stock_fund + "\nações de baixo risco = %.2f" % Investiment.invest_money_low_risk_stock + "\nações de alto risco = %.2f" % Investiment.invest_money_high_risk_stock + "\nday trade = %.2f" % Investiment.invest_money_day_trade )
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


#banks instructions
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

#shows player investiments
func _on_Button_pressed():
	$Button3/Investiment2.visible = true
	$Player_certo.visible = false
	$Button3/Button2.visible = true
	$Button3/FundoPreto.visible = true
	$RichTextLabel.visible = true
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
	$Player_certo.visible = true
	$RichTextLabel.visible = false
