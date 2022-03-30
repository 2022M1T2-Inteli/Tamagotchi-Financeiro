extends CanvasLayer

# Script for transition animation
# When the caracter collides with the pointer arrow,
#  the animation for changing scene will run

var current_path
func change_scene(path, delay = 0):
	get_tree().get_root().set_disable_input(true)
	current_path = path
	$Transition_fx.interpolate_property($overlay, "progress", 0.0, 1.0, 1.5, Tween.TRANS_QUINT, Tween.EASE_IN_OUT, delay)
	$Transition_fx.start()

func _on_Transition_fx_tween_completed(object, key):
	assert(get_tree().change_scene(current_path) == OK)
	get_tree().get_root().set_disable_input(false)
	Global.are_actions_over()
