
// You can write your code in this editor

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 2;
attackCD = -1;
hp = 3;
flash = 0;
invulnerable = 0;
hasControl = true;
canJump = 0;

camera_width = camera_get_view_x(view_camera[0]);
camera_height = camera_get_view_y(view_camera[0]);
camera_margin = 48;

heart_x = camera_width+150;
heart_y = camera_height+camera_margin;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE 
{
	FREE,
	ATTACK,
}

