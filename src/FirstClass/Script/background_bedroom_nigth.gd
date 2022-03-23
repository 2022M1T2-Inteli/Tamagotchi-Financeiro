extends Area2D

onready var changer = get_parent().get_node("Transition_in")

export var path : String
var rng = RandomNumberGenerator.new()

#

func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenery/bedroom.tscn"
		Global.position.x = 150
		Global.position.y = 705
		Global.day += 1
		Global.actions = 3
		Global.school = false
		Investiment.profit_savings += Investiment.invest_money_savings*0.05
		Investiment.invest_money_savings += Investiment.invest_money_savings*0.05
		rng.randomize()
		Global.inflation += rng.randi_range(1.5,3)
		changer.change_scene(Global.current_scene)
