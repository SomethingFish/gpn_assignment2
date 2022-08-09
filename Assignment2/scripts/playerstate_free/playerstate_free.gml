function PlayerState_Free(){
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

canJump -= 1;
if ((canJump > 0) && (key_jump))
{
	audio_play_sound(JumpSound, 3, false);
	vsp = -8;
	canJump = 0;
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
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	canJump = 10;
	if (sprite_index == sPlayerJump) audio_play_sound(JumpLandSound, 3, false )
	//Standing Still
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	//Moving Animation
	else
	{
		sprite_index = sPlayerRun;	
	}	
}


if (hsp != 0) image_xscale = sign(hsp);

attackCD--;
if (keyAttack && attackCD < 0)
{
	audio_sound_pitch(PlayerAttackSound, choose(0.8, 1.0, 1.2));
	audio_play_sound(PlayerAttackSound, 4, false);
	state = PLAYERSTATE.ATTACK;
	attackCD+=room_speed*0.5;
}
}