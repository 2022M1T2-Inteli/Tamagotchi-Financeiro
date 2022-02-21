extends Sprite
var pag = 1

var pers = null

var mensagem = 1
#onready var Text : Panel = get_node("Panel")

func _ready():
	self.visible = false
	pass # Replace with function body.
	
#	if perc != null:
#		if Player_certo.dialogo == true:
#		show()
#		perc.dialogo = false

func _process(delta):
	if pag == 1:
		mensagem = "Hello, Mr. Fox. This is a test! Here, we'll learn about economy!"
	if pag == 2:
		mensagem = ""

	$Panel/Label.set_text(str(mensagem))


func _on_Detector_body_entered(body):
	body.name == "Player_certo"
	self.visible = true	


func _on_Detector_body_exited(body):
	if body.name == "Player_certo":
		mensagem = null
		self.visible = false
