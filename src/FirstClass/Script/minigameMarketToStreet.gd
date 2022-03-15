extends Button

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_Button_pressed():
	Global.current_scene = "res://Scenery/streetHouse.tscn"
	Global.position.x = 5450
	Global.position.y = 500
	Global.are_actions_over()
	changer.change_scene(Global.current_scene)
