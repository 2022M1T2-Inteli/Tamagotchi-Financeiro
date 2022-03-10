extends Node2D

export var reference_path = "res://Scenes/teste.tscn"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$LineEdit.grab_focus()
	$LineEdit.set_cursor_position(len($LineEdit.text))
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_entered(new_text):
	Global.player_name = new_text
	print(Global.player_name)
	get_tree().change_scene(reference_path)


func _on_ContinueButton_pressed():
	Global.player_name = $LineEdit.text
	print(Global.player_name)
	get_tree().change_scene(reference_path) # Change scene to the next one
