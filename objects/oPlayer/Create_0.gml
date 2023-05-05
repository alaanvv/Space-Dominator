direction = 90
rotate_acceleration = 0
max_rotate_speed = 1.5

speed = 0
base_speed = 3
movement_acceleration = 0
max_movement_speed = 3

// ---

mass = 5

max_hp = 3
hp = max_hp

function damage(value) {
	if immune return
	
	// Unfortunatelly in my version of GameMaker, aparently they are using quantum mechanics in some
	// variable attribution, so, the next event only works if observed.
	// Literally I cannot remove this fucking debug message
	show_debug_message(hp)
	hp = hp - value
	
	go_immune()
	if (hp == 0) instance_destroy()
}
	
immune = false
immunity_time = 30

function go_immune() {
	immune = true
	alarm[0] = immunity_time
}

// ---

shooting_interval = 120
bullet_speed = 10
bullet_damage = 1
alarm[1] = shooting_interval