extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var visibility = [true, true, true, false, false, false, false, false]

# Called when the node enters the scene tree for the first time.
func _ready():
	change_actions()
	 # Replace with function body.
	
	

func change_actions():
	for i in range(visibility.size(), Global.actions, -1):
		get_node("energy_"+ str(i)).visible = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


