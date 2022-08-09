if (room == Menu)
{
	audio_stop_sound(LevelBGM);
	audio_play_sound(MenuBGM, 10, true);
}
else
{
	audio_stop_sound(MenuBGM);
	audio_play_sound(LevelBGM, 10, true);
}