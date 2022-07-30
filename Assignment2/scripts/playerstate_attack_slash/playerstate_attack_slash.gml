hsp =  0;
vsp = 0;

//Start of attack
if (sprite_index != sAttack_Slash)
{
	sprite_index = sAttack_Slash;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

mask_index = sAttack_SlashHB;