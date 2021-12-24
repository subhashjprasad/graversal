/// @desc Go to level select screen

if (clickable == true)
{
	global.transition = "end";
	obj_controller.tra = 1;
	obj_controller.tick = 0;
	global.level_selected = 0;
	audio_play_sound(snd_button_click, 0, false);
	clicked = false;
}
