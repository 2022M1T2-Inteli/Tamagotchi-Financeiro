extends Node2D

# Code for the cash register. It subtracts from the
# player's current money and enable the images from
# the selected products.

var image = Image.new()

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
	
	
	Records.market.append(Global.total*-1)
	Global.update_wallet[0] = true
	Global.update_wallet[1] = Records.market.back()
