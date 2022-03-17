extends Button


onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Button_pressed():
	Global.current_scene = "res://Scenery/streetHouse.tscn"
	Global.change_position(5450,500)
	Global.happiness += 2
	Global.knowledge += 1
	Global.are_actions_over()
	changer.change_scene(Global.current_scene)
	Global.total = 0
