
//Movement
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button_pressed(mb_left);
switch (state)
{
	case PLAYERSTATE.FREE: 	PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
}
