extends Node2D

#play animation
func _ready():
	$Taxi/AnimationPlayer.play("taxi2")

#change to destiny scene
func _on_AnimationPlayer_animation_finished(taxi2):
	get_tree().change_scene("res://Scenes/destiny.tscn")
