extends Node2D


var valorBus = 4
var valorTaxi = 10
var bemBusval = 3
var bemTaxval = 2

func _ready():
	$dinheiroBus.text = str ("R$ - %.2f" % float(valorBus), " Reais")
	$bemestarBus.text = str ("- %.2f" % float(bemBusval), " de Bem-estar")
	$dinherioTaxi.text = str ("R$ - %.2f" % float(valorTaxi), " Reais")
	$BemestarTaxi.text = str ("- %.2f" % float(bemTaxval), " de Bem-estar")

func _on_Button_bus_pressed():
	Global.change_position(177, 674)
	Global.current_scene = "res://Scenery/classUniversity.tscn"
	get_tree().change_scene("res://Scenery/classUniversity.tscn")
	if Global.digital_money <= valorBus:
		Global.money -= valorBus
	else: 
		Global.digital_money -= valorBus
	get_tree().paused = false
	Global.happiness -= 3


func _on_Button_taxi_pressed():
	Global.change_position(177, 674)
	Global.current_scene = "res://Scenery/classUniversity.tscn"
	get_tree().change_scene("res://Scenery/classUniversity.tscn")
	if Global.digital_money <= valorTaxi:
		Global.money -= valorTaxi
	else: 
		Global.digital_money -= valorTaxi
	get_tree().paused = false
	Global.happiness -=2


func _on_exit_pressed():
	print("saindo")
	self.queue_free()
