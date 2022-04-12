extends CollisionShape2D

# Code that enable and disable the street area based
# on the daily class at the school. If the player didn't
# visited the school that day, there will be a barrier that
# blocks access to the map.

var old_layer_mask = 0
var old_collision_mask = 0


func _ready():
	if(Global.school):
		get_parent().get_node("Sprite").visible = false
		self.disabled = true
