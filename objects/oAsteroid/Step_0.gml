if instance_exists(oPlayer) {
	direction -= lerp(0, angle_difference(direction, point_direction(x, y, oPlayer.x, oPlayer.y)), 0.01)
	speed = lerp(speed, min(2 * mass * oPlayer.mass / point_distance(x, y, oPlayer.x, oPlayer.y), max_speed), 0.1)
}

image_angle += rotate_speed