// DIRECTION
if keyboard_check(ord("D")) rotate_acceleration = max(-max_rotate_speed, rotate_acceleration - 0.15)
else if keyboard_check(ord("A")) rotate_acceleration = min(max_rotate_speed, rotate_acceleration + 0.15)
else if rotate_acceleration != 0 {
	rotate_acceleration = lerp(rotate_acceleration, 0, 0.3)
	if abs(rotate_acceleration) <= 0.1 { rotate_acceleration = 0 }
}

direction = direction + (3 * rotate_acceleration)
image_angle = direction

// MOVEMENT
if keyboard_check(ord("S")) movement_acceleration = max(-max_movement_speed, movement_acceleration - 0.15)
else if keyboard_check(ord("W")) movement_acceleration = min(max_movement_speed, movement_acceleration + 0.15)
else if movement_acceleration != 0 {
	movement_acceleration = lerp(movement_acceleration, 0, 0.2)
	if abs(movement_acceleration) <= 0.1 { movement_acceleration = 0 }
}

// DONT EXIT SCREEN
if collision_line(x, y, x + 25 * hspeed, y + 25 * vspeed, oWall, false, true) {
	movement_acceleration = lerp(movement_acceleration, 0, 0.3)
	if abs(movement_acceleration) <= 0.1 { movement_acceleration = 0 }
}

speed = base_speed * movement_acceleration

// ---
if (immune) image_alpha = 0.5
else image_alpha = 1