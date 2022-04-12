extends CanvasLayer

func _ready():
	$Calculator.visible = false

func _on_Button_pressed():
	Global.calc = false
	$Calculator.visible = true

func _process(delta):
	if Global.calc == true:
		$Calculator.visible = false

