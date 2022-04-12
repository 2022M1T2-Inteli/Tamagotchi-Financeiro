extends Area2D

#var wardrobe = preload ("res://Scenes/wardrobe.tscn")
var new_node

func _ready():
	pass # Replace with function body.

func _on_wardrobe_body_entered(body):
	if body.name == "Player_certo" && (StoreManagement.products[2][0] || StoreManagement.products[2][1] || StoreManagement.products[2][2] || StoreManagement.products[2][3] || StoreManagement.products[2][4]):
		get_tree().change_scene("res://Scenes/wardrobe.tscn")
	else:
		pass
