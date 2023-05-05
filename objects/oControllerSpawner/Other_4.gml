randomize()

asteroid_amount = random(8) + 2

repeat asteroid_amount {
	x_pos = choose(-random(10), room_width + random(10))
	y_pos = choose(-random(10), room_height + random(10))
		
	if choose(0, 1) x_pos = random(room_width)
	else y_pos = random(room_height)
	
	instance_create_layer(x_pos, y_pos, "Asteroids", oAsteroid)
}