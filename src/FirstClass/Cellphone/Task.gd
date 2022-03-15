extends Node2D

var tasks = ["1. Vá ate a faculdade e veja sua aula de hoje!\n\n2.  Conheça o mercado!","1.  Vá ate a faculdade e veja sua aula de hoje!\n\n2.  Conheça o Banco!"]

# Functions for transition between Task app and cellphone main page

func _ready():
	get_node("tasks text").text = tasks[Global.day-1] 

func _on_Button_exit_task_pressed():
	get_tree().change_scene("res://Cellphone/Cellphone.tscn")

