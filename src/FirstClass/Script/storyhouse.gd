extends Sprite

export var reference_path = "res://Scenery/bedroom.tscn"

#plays animation
func _ready():
	$Taxi/AnimationPlayer.play("carhouse")

#transition to player bedroom
func _on_AnimationPlayer_animation_finished(carhouse):
	get_tree().change_scene("res://Scenery/bedroom.tscn")
