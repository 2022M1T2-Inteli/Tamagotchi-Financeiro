extends CanvasLayer
var current_path
func change_scene(path, delay = 0):
	current_path = path
	$transition_fx.interpolate_property($overlay, "progress", 1.0, 0.0, 2.0, Tween.TRANS_QUINT, Tween.EASE_IN_OUT)
	$transition_fx.start()


func _on_Transition_fx_tween_completed(object, key):
	assert(get_tree().change_scene(current_path) == OK)
