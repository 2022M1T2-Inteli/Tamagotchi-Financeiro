extends Node2D


func _ready():
	for i in range(0,5):
		get_node("Book_" + str(i)).visible = StoreManagement.products[0][i]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_exit_pressed():
	get_tree().change_scene("res://Scenery/bedroom.tscn")


func _on_Book_I_pressed():
	pass # Replace with function body.


func _on_Book_II_pressed():
	pass # Replace with function body.


func _on_Book_III_pressed():
	pass # Replace with function body.


func _on_Book_IV_pressed():
	pass # Replace with function body.


func _on_Book_V_pressed():
	pass # Replace with function body.
