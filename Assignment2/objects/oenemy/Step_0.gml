
vsp = vsp + grv;

if (place_meeting(x+hsp,y,oWall) || place_meeting(x+hsp,y,oInvisWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall) && !place_meeting(x+sign(hsp),y,oInvisWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x = x + hsp

if (place_meeting(x,y+vsp,oWall) || place_meeting(x,y+vsp,oInvisWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp

if (hsp != 0) image_xscale = sign(hsp);