if (point_in_circle(oPlayer.x, oPlayer.y, x,y, 64)) && (!instance_exists(oText))
{
	with (instance_create_layer(x, y-16, layer, oText))
	{
		text = other.text;
		length = string_length(text);
		
	}
}