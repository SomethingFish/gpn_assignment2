/// @desc DrawSetText(color, font, halign, valign)
/// @arg color
/// @arg font
/// @arg halign
/// @arg valign

/// Allows one line setup of major text drawing vars
function DrawSetText(argument0, argument1, argument2, argument3){
	draw_set_color(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);
}