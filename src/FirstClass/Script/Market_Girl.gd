extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.day == 1):
		self.visible = false
		$CollisionShape2D.disabled = true
		$Area2D/CollisionShape2D.disabled = true
	else:
		self.visible = true
		$CollisionShape2D.disabled = false
		$Area2D/CollisionShape2D.disabled = false

func _on_Area2D_body_entered(body):
	if(body.name == "Player_certo" && Global.day != 1):
		get_node("Area2D/Control").visible = true
		get_node("Area2D/Control/NinePatchRect").visible = true
		get_node("Area2D/Control/NinePatchRect/MarginContainer").visible = true
		get_node("Area2D/Control/NinePatchRect/MarginContainer/Label").visible = true
		get_node("Area2D/Control/NinePatchRect/MarginContainer/Label/AnimationPlayer").play("Market_NPC")
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if(body.name == "Player_certo"):
		get_node("Area2D/Control").visible = false
		get_node("Area2D/Control/NinePatchRect").visible = false
		get_node("Area2D/Control/NinePatchRect/MarginContainer").visible = false
		get_node("Area2D/Control/NinePatchRect/MarginContainer/Label").visible = false
		get_node("Area2D/Control/NinePatchRect/MarginContainer/Label/AnimationPlayer").play("RESET")
