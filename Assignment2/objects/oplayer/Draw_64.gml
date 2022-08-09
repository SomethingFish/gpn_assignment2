/// @desc HP Hearts
for (var i = 0; i < hp; i++)
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_sprite(sHealth, 0, heart_x+((i-1)*92), heart_y);
}
