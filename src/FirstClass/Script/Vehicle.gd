extends Sprite

# Code for changing the vehicle sprite
# based on what the player have bought

func _ready():
	var image = Image.new()
	if(StoreManagement.products[1][0]):
		image.load("res://assets/Vehicles_0.png")
		self.scale = Vector2(0.3, 0.3)
	if(StoreManagement.products[1][1]):
		image.load("res://assets/Vehicles_1.png")
		self.scale = Vector2(0.4, 0.4)
	if(StoreManagement.products[1][2]):
		image.load("res://assets/Vehicles_2.png")
		self.scale = Vector2(0.4, 0.4)
	if(StoreManagement.products[1][3]):
		image.load("res://assets/Vehicles_3.png")
		self.scale = Vector2(0.8, 0.8)
	if(StoreManagement.products[1][4]):
		image.load("res://assets/Vehicles_4.png")
		self.scale = Vector2(0.8, 0.8)
	else:
		pass
	var textura = ImageTexture.new()
	textura.create_from_image(image, 0)
	self.texture = textura
	self.position = Vector2(550,530)
