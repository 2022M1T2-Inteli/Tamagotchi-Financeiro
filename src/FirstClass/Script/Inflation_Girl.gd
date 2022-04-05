extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if(body.name == "Player_certo"):
		get_node("Control").visible = true
		get_node("Control/NinePatchRect").visible = true
		get_node("Control/NinePatchRect/MarginContainer").visible = true
		get_node("Control/NinePatchRect/MarginContainer/Label").visible = true
		get_node("Control/NinePatchRect/MarginContainer/Label/AnimationPlayer").play("Speech")
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if(body.name == "Player_certo"):
		get_node("Control").visible = false
		get_node("Control/NinePatchRect").visible = false
		get_node("Control/NinePatchRect/MarginContainer").visible = false
		get_node("Control/NinePatchRect/MarginContainer/Label").visible = false
		get_node("Control/NinePatchRect/MarginContainer/Label/AnimationPlayer").play("RESET")
