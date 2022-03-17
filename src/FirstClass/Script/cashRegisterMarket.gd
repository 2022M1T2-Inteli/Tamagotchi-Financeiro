extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$total.text = str (Global.total)
	
	if Global.digital_money <= Global.total:
		Global.money -= Global.total
	else: 
		Global.digital_money -= Global.total



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
