size = irandom(2) + 1
mass = 20 * size
rotate_speed = random(1)

sprite_index = choose(sAsteroid1, sAsteroid2, sAsteroid3, sAsteroid4)
image_xscale = int64(size)
image_yscale = int64(size)
direction = random(360)
speed = random(0.8)

max_speed = 0.8

// ---

hp = size

function damage(value) {
	show_debug_message(hp)
	hp = hp - value
	
	if hp < 1 instance_destroy()
}