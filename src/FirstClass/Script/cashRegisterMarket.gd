extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var image = Image.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	$total.text = str (Global.total)
	for i in range(0, 3):
		image.load(Global.products[i])
		var texture = ImageTexture.new()
		texture.create_from_image(image, 0)
		get_node("Sprite"+ str(i+1)).texture = texture
		get_node("Sprite"+ str(i+1)).position = Vector2(300 + 350*i, 370)
		get_node("Sprite"+ str(i+1)).scale = Vector2(0.5, 0.5)
	
	if Global.digital_money <= Global.total:
		Global.money -= Global.total
	else: 
		Global.digital_money -= Global.total
		
	Global.recordsPrice.append(Global.total*-1)
	Global.update_wallet[0] = true
	Global.update_wallet[1] = Global.recordsPrice.back()



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
