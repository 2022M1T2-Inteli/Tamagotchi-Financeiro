extends Button

# Exit button from the Market Minigame

onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _on_backbutton_pressed():
	Global.current_scene = "res://Scenery/streetHouse.tscn"
	Global.position.x = 5450
	Global.position.y = 500
	changer.change_scene(Global.current_scene)
