// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;
if (place_meeting(x,y+1,oWall) && (key_jump))
{
	vsp = -7;
}

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp

//Animations
//Jump Animation
//if (!place_meeting(x,y+1,oWall))
//{
//	sprite_index = someJumpingSpriteName;
//	image_speed = 0;
//	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
//}
//else
//{
//	//Standing Still
//	image_speed = 1;
//	if (hsp == 0)
//	{
//		sprite_index = sPlayer;
//	}
//	//Moving Animation
//	else
//	{
//		sprite_index = someMovingSpriteName;	
//	}	
//}

if (hsp != 0) image_xscale = sign(hsp);

if (keyAttack) state = PLAYERSTATE.ATTACK_SLASH;
