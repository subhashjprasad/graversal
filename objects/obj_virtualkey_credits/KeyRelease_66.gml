/// @desc Go back to main menu

if (obj_virtualkey_back_to_main_menu.clickable == true)
{
	audio_play_sound(snd_pause_click, 0, 0);
	instance_activate_object(obj_controller);
	global.transition = "end";
	obj_controller.tra = 1;
	obj_controller.tick = 0;
	global.level_selected = 54;
	obj_virtualkey_back_to_main_menu.clicked = false;
}

