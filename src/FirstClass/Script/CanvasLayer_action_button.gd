extends TouchScreenButton

func simulate_key(which_key):
  var ev = InputEvent()
  ev.type = InputEvent.KEY
  ev.scancode = which_key
  get_tree().input_event(ev)

func _on_TouchScreenButton_pressed():
	simulate_key(16777221)
