extends StaticBody2D


# Code that enables the Girl NPC at the Market to talk about Inflation
# She will appear after the first day and will only talk when the player
# Is nearby her

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


func _on_Area2D_body_exited(body):
	if(body.name == "Player_certo"):
		get_node("Area2D/Control").visible = false
		get_node("Area2D/Control/NinePatchRect").visible = false
		get_node("Area2D/Control/NinePatchRect/MarginContainer").visible = false
		get_node("Area2D/Control/NinePatchRect/MarginContainer/Label").visible = false
		get_node("Area2D/Control/NinePatchRect/MarginContainer/Label/AnimationPlayer").play("RESET")
