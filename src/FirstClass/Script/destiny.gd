extends Node2D



func _ready():
	$Timer.start()

# transition to next scene
func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/storyhouse.tscn")
