size = random(2) + 1
mass = random(10) + 15 * size
rotate_speed = random(1)

sprite_index = choose(sAsteroid1, sAsteroid2, sAsteroid3, sAsteroid4)
image_xscale = size
image_yscale = size
direction = random(360)
speed = random(0.8)

max_speed = 0.8

// ---

hp = 2 * size

function damage(value) {
	show_debug_message(hp)
	hp = hp - value
	
	if hp < 1 instance_destroy()
}