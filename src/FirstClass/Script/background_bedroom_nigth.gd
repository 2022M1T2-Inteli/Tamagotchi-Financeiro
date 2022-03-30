extends Area2D

onready var changer = get_parent().get_node("Transition_in")

export var path : String
var rng = RandomNumberGenerator.new()

var real_estate_fund = 0
var multimarket_fund = 0
var stock_fund = 0
var high_risk_stock_fund = 0
var low_risk_stock = 0
var high_risk_stock = 0
var day_trade = 0 

func _ready():
	rng.randomize()
	real_estate_fund = rng.randf_range(0.07,0.1)
	multimarket_fund = rng.randf_range(0.06,0.11)
	stock_fund = rng.randf_range(0.05,0.13)
	high_risk_stock_fund = rng.randf_range(-0.03,0.16)
	low_risk_stock = rng.randf_range(0.01,0.2)
	high_risk_stock = rng.randf_range(-0.1,0.4)
	day_trade = rng.randf_range(-0.2,0.5)


func _on_Area2D_body_entered(body):
	if body.name == "Player_certo":
		Global.current_scene = "res://Scenes/mudar_ciclo.tscn"
		Global.position.x = 150
		Global.position.y = 705
		Global.day += 1
		Global.actions = 3
		Global.school = false
		rng.randomize()
		
		#fix income
		Investiment.profit_savings += Investiment.invest_money_savings*0.05
		Investiment.invest_money_savings += Investiment.invest_money_savings*0.05
		
		Investiment.profit_cdb += Investiment.invest_money_cdb*0.08
		Investiment.invest_money_cdb += Investiment.invest_money_cdb*0.08
		
		Investiment.profit_direct_treasury += Investiment.invest_money_direct_treasury*0.075
		Investiment.invest_money_direct_treasury += Investiment.invest_money_direct_treasury*0.075
		
		Investiment.profit_debenture += Investiment.invest_money_debenture*0.07
		Investiment.invest_money_debenture += Investiment.invest_money_debenture*0.07
		
		#fund
		Investiment.profit_real_estate_fund += Investiment.invest_money_real_estate_fund*real_estate_fund
		Investiment.invest_money_real_estate_fund += Investiment.invest_money_real_estate_fund*real_estate_fund
		
		Investiment.profit_multimarket_fund += Investiment.invest_money_multimarket_fund*multimarket_fund
		Investiment.invest_money_multimarket_fund += Investiment.invest_money_multimarket_fund*multimarket_fund
		
		Investiment.profit_stock_fund += Investiment.invest_money_stock_fund*stock_fund
		Investiment.invest_money_stock_fund += Investiment.invest_money_stock_fund*stock_fund
		
		Investiment.profit_high_risk_stock_fund += Investiment.invest_money_high_risk_stock_fund*high_risk_stock_fund
		Investiment.invest_money_high_risk_stock_fund += Investiment.invest_money_high_risk_stock_fund*high_risk_stock_fund
		
		#variable income 
		
		Investiment.profit_low_risk_stock += Investiment.invest_money_low_risk_stock*low_risk_stock
		Investiment.invest_money_low_risk_stock += Investiment.invest_money_low_risk_stock*low_risk_stock
		
		Investiment.profit_high_risk_stock += Investiment.invest_money_high_risk_stock*high_risk_stock
		Investiment.invest_money_high_risk_stock += Investiment.invest_money_high_risk_stock*high_risk_stock
		
		Investiment.profit_day_trade += Investiment.invest_money_day_trade*day_trade
		Investiment.invest_money_day_trade += Investiment.invest_money_day_trade*day_trade
		
		Global.inflation += rng.randf_range(1.5,3)
		changer.change_scene(Global.current_scene)
