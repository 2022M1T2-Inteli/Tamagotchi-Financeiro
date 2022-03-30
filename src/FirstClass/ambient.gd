extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if $"/root/Ambient".is_processing():
		autoplay = true 
	else:
		autoplay = false
