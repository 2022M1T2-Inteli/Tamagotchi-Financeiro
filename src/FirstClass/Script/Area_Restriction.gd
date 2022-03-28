extends CollisionShape2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var old_layer_mask = 0
var old_collision_mask = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.school):
		get_parent().get_node("Sprite").visible = false
		self.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
