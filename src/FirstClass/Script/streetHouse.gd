extends Node2D


func _ready():
	# Animations for all arrows in the street
	
	$Setapreta/setapreta.play("seta1")
	$Setapreta2/setapreta2.play("setapreta2")
	$Setapreta3/setapreta3.play("seta3")
	$Setapreta4/setapreta4.play("seta4")
	$setapreta5/setapreta5.play("seta5")
	$setapreta6/setapreta6.play("seta6")
	
# Code for changing the house sprite
# based on what the player have bought
	 
	var image = Image.new()
	if(StoreManagement.products[4][3]):
		image.load("res://assets/hause 4.png")
	elif(StoreManagement.products[4][2]):
		image.load("res://assets/hause1.png")
	elif(StoreManagement.products[4][1]):
		image.load("res://assets/hause2.png")
	elif(StoreManagement.products[4][0]):
		image.load("res://assets/hause 3.png")
	else:
		image.load("res://assets/house1highquality.png")
	var textura = ImageTexture.new()
	textura.create_from_image(image, 0)
	$House.texture = textura
	$House.scale = Vector2 (0.75,0.75)
	$House.position = Vector2 (597.000,303.997)
