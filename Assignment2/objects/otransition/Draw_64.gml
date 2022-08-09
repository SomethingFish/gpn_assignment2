/// @description Draw black bars

if (mode != TRANSITION_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, percent*height_half, false);
	draw_rectangle(0, height, width, height-(percent*height_half), false);
}

