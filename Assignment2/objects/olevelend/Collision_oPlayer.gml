/// @description Move to next Level

with (oPlayer)
{
	if (hasControl)
	{
		hasControl = false;
		SlideTransition(TRANSITION_MODE.GOTO, other.target);
	}
}
