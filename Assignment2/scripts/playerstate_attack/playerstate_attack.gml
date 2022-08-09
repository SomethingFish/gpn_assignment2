function PlayerState_Attack(){

//Start of attack
var hitbox_type = sPlayerAttackHitBox;
if(sprite_index != sPlayerAttack)
{
	if (!place_meeting(x,y+1,oWall))
	{
		if(key_up && sprite_index != sPlayerJumpAttack_Up)
		{
			sprite_index = sPlayerJumpAttack_Up;
			image_speed = 1;
			ds_list_clear(hitByAttack);
			hitbox_type = sPlayerJumpAttack_UpHitBox;
		}
		if(key_down && sprite_index != sPlayerJumpAttack_Down)
		{
			sprite_index = sPlayerJumpAttack_Down;
			image_speed = 1;
			ds_list_clear(hitByAttack);
			hitbox_type = sPlayerJumpAttack_DownHitBox;
		}
		if(!key_down && !key_up && sprite_index != sPlayerAttack)
		{
			sprite_index = sPlayerAttack;
			image_speed = 1;
			ds_list_clear(hitByAttack);
			hitbox_type = sPlayerAttackHitBox;
		}
	}
	else
	{
		sprite_index = sPlayerAttack;
		image_speed = 1;
		ds_list_clear(hitByAttack);
		hitbox_type = sPlayerAttackHitBox;
	}
}

//Use attack hitbox and check for hits
mask_index = hitbox_type;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
if (hits > 0)
{
	if (sprite_index == sPlayerJumpAttack_Down)
	{
		vsp = -9;
	}
	for (var i = 0; i < hits; i++)
	{
		//If this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i];
		if(ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				audio_play_sound(EnemyHitSound, 5, false);
				hp = hp - 5;
				flash = 3;
			}
		}
	}
}
var corpseHits = instance_place_list(x,y,oEnemyDead,hitByAttackNow,false);
if (corpseHits > 0)
{
	if (sprite_index == sPlayerJumpAttack_Down)
	{
		vsp = -9;
	}
	for (var i = 0; i < hits; i++)
	{
		//If this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i];
		if(ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;

if (animation_end())
{
	sprite_index = sPlayer;
	state = PLAYERSTATE.FREE;
}
}

