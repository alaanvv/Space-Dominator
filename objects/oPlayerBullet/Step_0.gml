if image_xscale != 1 {
	image_xscale = lerp(image_xscale, 1, 0.2)
	if image_xscale < 1.05 image_xscale = 1
}

if image_yscale != 1 {
	image_yscale = lerp(image_yscale, 1, 0.2)
	if image_yscale < 1.05 image_yscale = 1
}