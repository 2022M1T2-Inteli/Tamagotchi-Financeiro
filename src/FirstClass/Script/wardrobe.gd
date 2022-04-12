extends Area2D

# preload wardrobe scene 
var wardrobe = preload ("res://Scenes/wardrobe.tscn")
var new_node

# function to change scene to wardrobe, but only if player have clothes
func _on_wardrobe_body_entered(body):
	if body.name == "Player_certo" && (StoreManagement.products[2][0] || StoreManagement.products[2][1] || StoreManagement.products[2][2] || StoreManagement.products[2][3] || StoreManagement.products[2][4]):
		get_tree().change_scene("res://Scenes/wardrobe.tscn")
	else:
		pass
