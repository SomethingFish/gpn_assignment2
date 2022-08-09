width = display_get_gui_width();
height = display_get_gui_height();

height_half = height * 0.5;

enum TRANSITION_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANSITION_MODE.INTRO;
percent = 1;
target = room;