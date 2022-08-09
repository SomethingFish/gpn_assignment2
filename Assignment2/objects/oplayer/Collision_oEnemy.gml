/// @description Get player injured and die to enemy
if (invulnerable <= 0)
{
	hp = max(0, hp - 1);
	if (hp > 0)
	{
		audio_play_sound(PlayerHitSound, 7, false);
		flash = 5;
		invulnerable = 60;
		if (sign(hsp) !=0) image_xscale = sign(hsp); 
	}
	else
	{
		instance_change(oPlayerDead, true);
		audio_play_sound(PlayerDieSound, 8, false);
	}
}