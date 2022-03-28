extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D2/Balon/AnimationPlayer.play("balon")
	$Plane/Animationplane.play("plane")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

