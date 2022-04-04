extends Node2D


var valorBus = 14
var valorTaxi = 28
var bemBusval = 3
var bemTaxval = 2


func _ready():
	$dinheiroBus.text = str ("R$ - %.2f" % float(valorBus), " Reais")
	$bemestarBus.text = str ("- %.2f" % float(bemBusval), " de Bem-estar")
	$dinherioTaxi.text = str ("R$ - %.2f" % float(valorTaxi), " Reais")
	$BemestarTaxi.text = str ("- %.2f" % float(bemTaxval), " de Bem-estar")



func _on_Button_bus_pressed():
	if Global.digital_money <= valorBus:
		Global.money -= valorBus
	else: 
		Global.digital_money -= valorBus
	if(Global.school):
		get_tree().paused = false
		Global.change_position(13390,714)
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
	else:
		pass
	Global.happiness -= 3

func _on_Button_taxi_pressed():
	if Global.digital_money <= valorTaxi:
		Global.money -= valorTaxi
	else: 
		Global.digital_money -= valorTaxi
	if(Global.school):
		get_tree().paused = false
		Global.change_position(13390,714)
		Global.current_scene = "res://Scenery/streetHouse.tscn"
		get_tree().change_scene("res://Scenery/streetHouse.tscn")
	else:
		pass
	Global.happiness -= 2


func _on_exit_pressed():
	self.queue_free()
