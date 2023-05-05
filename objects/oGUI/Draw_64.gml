var hp = instance_exists(oPlayer) ? oPlayer.hp : 0

draw_set_font(fMain)
draw_set_color(c_white)

draw_text(10, 10, "HP  " + string(hp))