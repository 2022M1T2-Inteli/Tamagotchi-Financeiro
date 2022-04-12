extends Node2D

onready var res = $resultado

var numero1 = null
var numero2 = null
var resultado = 0
var operacao = ""

func _on_Button_1_pressed():
	res.set_text(res.get_text() + "1")

func _on_Button_2_pressed():
	res.set_text(res.get_text() + "2")

func _on_Button_3_pressed():
	res.set_text(res.get_text() + "3")

func _on_Button_4_pressed():
	res.set_text(res.get_text() + "4")

func _on_Button_5_pressed():
	res.set_text(res.get_text() + "5")

func _on_Button_6_pressed():
	res.set_text(res.get_text() + "6")

func _on_Button_7_pressed():
	res.set_text(res.get_text() + "7")

func _on_Button_8_pressed():
	res.set_text(res.get_text() + "8")

func _on_Button_9_pressed():
	res.set_text(res.get_text() + "9")

func _on_Button_0_pressed():
	res.set_text(res.get_text() + "0")

func _on_Button_ponto_pressed():
	var ponto = false
	for i in res.get_text():
		if i == ".":
			ponto = true
	if !ponto:
		res.set_text(res.get_text() + ".")

func _on_Button_x_pressed():
	#res.set_text(res.get_text() + "*")
	operacao = "x"
	if numero1 == null:
		numero1 = float(res.get_text())
		res.set_text("")
	else:
		numero2 = float(res.get_text())
		realizar_operacao(operacao)

func _on_Button_div_pressed():
	#res.set_text("/tes")
	operacao = "div"
	if numero1 == null:
		numero1 = float(res.get_text())
		res.set_text("")
	else:
		numero2 = float(res.get_text())
		realizar_operacao(operacao)

func _on_Button_fechar_pressed():
	get_tree().paused = false
	Global.calc = true 


func _on_Button_exp_pressed():
	#res.set_text(res.get_text() + "^")
	operacao = "exp"
	if numero1 == null:
		numero1 = float(res.get_text())
		res.set_text("")
	else:
		numero2 = float(res.get_text())
		realizar_operacao(operacao)

func _on_Button_AC_pressed():
	numero1 = null
	numero2 = null
	res.set_text("")
	

func _on_Button_CE_pressed():
	var text = []
	for i in res.get_text():
		text.append(i)
	text.remove (text.size() - 1)
	res.set_text ("")
	for i in text:
		res.set_text (res.get_text() + i)


func _on_Button_soma_pressed():
	#res.set_text(res.get_text() + "+")
	operacao = "soma"
	if numero1 == null:
		numero1 = float(res.get_text())
		res.set_text("")
	else:
		numero2 = float(res.get_text())
		realizar_operacao(operacao)

func _on_Button_sub_pressed():
	#res.set_text(res.get_text() + "-")
	operacao = "sub"
	if numero1 == null:
		numero1 = float(res.get_text())
		res.set_text("")
	else:
		numero2 = float(res.get_text())
		realizar_operacao(operacao)

func _on_Button_calcular_pressed():
	realizar_operacao(operacao)

func realizar_operacao (operacao):
	if numero2 == null:
		numero2 = float(res.get_text())
	if numero1 != null:
		if operacao == "div":
			resultado = numero1 / numero2
			res.set_text(str(resultado))
		elif operacao == "x":
			resultado = numero1 * numero2
			res.set_text(str(resultado))
		elif operacao == "sub":
			resultado = numero1 - numero2
			res.set_text(str(resultado))
		elif operacao == "soma":
			resultado = numero1 + numero2
			res.set_text(str(resultado))
		elif operacao == "exp":
			resultado = pow (numero1 , numero2)
			res.set_text(str(resultado))
	numero1 = null
	numero2 = null
	
