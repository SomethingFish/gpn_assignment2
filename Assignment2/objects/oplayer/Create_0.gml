
// You can write your code in this editor

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 2;
attackCD = -1;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE 
{
	FREE,
	ATTACK,
}

