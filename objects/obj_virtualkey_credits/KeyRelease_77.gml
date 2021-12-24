/// @desc Go to credits screen

if (clickable == true)
{
	audio_play_sound(snd_button_click, 0, 0);
	global.transition = "end";
	obj_controller.tra = 1;
	obj_controller.tick = 0;
	global.level_selected = 53;
	clicked = false;
}
