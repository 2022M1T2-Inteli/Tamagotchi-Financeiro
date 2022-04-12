extends Area2D

# This code stores the paths for the classes and contents.
# Depending on the day, the index changes and the path
# Taken is different

var contents = ["res://Scenes_ana/dialogBoxInflacao.tscn","res://Scenes_ana/dialogBoxTest.tscn","res://Scenes_ana/dialogBoxTestCDB.tscn",
		"res://Scenes_ana/dialogBoxTestIndicadores.tscn", "res://Scenes_ana/dialogBoxTestRendaF.tscn",
		"res://Scenes_ana/dialogBoxTestTesouroDireto.tscn"]

func _on_Detector_body_entered(body):
	if(body.name == "Player_certo" && !Global.school):
		get_tree().change_scene(contents[Global.day-1])
	#$Control2.visible = true


func _on_Detector_body_exited(body):
	body.name == "Player_certo"
	#Global.are_actions_over()
	#$Control2.visible = false
