shake = false
shake_time = 0
shake_magnitude = 0
shake_fade = 0.25

function shake(time = 300, magnitude = 10, fade = 0.25) {
	show_debug_message(999)
	shake = true
	shake_time = time
	shake_magnitude = magnitude
	shake_fade = fade
}