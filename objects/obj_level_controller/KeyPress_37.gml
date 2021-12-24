/// @desc Change tutorial state

if ((global.tutorial_completed == 0) && (count == 1))
{
	global.tutorial_completed = 1;
	alarm_set(1, 60);
}
