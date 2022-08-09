
//Movement
if (hasControl)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_jump = keyboard_check_pressed(vk_space);
	keyAttack = mouse_check_button_pressed(mb_left);
}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
	key_jump = 0;
	keyAttack = 0;
}
invulnerable = max(invulnerable-1, 0);
flash = max(flash-0.05, 0);

switch (state)
{
	case PLAYERSTATE.FREE: 	PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
}
