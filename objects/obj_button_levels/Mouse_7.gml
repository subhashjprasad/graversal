/// @desc Start transition

if (global.level_lock[level - 1] != 0)
{
	global.transition = "end";
	obj_controller.tra = 1;
	obj_controller.tick = 0;
	global.level_selected = level;
	audio_play_sound(snd_button_click, 0, 0);
	clicked = false;
}
