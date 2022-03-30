extends CanvasLayer

func _ready():
	$Calculator.visible = false

func _on_Button_pressed():
	$Calculator.visible = true
