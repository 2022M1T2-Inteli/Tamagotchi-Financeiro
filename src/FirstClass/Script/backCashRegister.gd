extends Button

# Code that makes the transition between the cash register
# and the street house.

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Button_pressed():
	Global.current_scene = "res://Scenery/streetHouse.tscn"
	Global.actions -= 1
	Global.change_position(5450,500)
	changer.change_scene(Global.current_scene)
	Global.total = 0
	$"/root/Ambient".play()
