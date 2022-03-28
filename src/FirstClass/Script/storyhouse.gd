extends Sprite

export var reference_path = "res://Scenery/bedroom.tscn"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Taxi/AnimationPlayer.play("carhouse")


func _on_AnimationPlayer_animation_finished(carhouse):
	get_tree().change_scene("res://Scenery/bedroom.tscn")
#	Global.player_name = text
#	print(Global.player_name)
#	get_tree().change_scene(reference_path)
