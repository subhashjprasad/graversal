/// @desc Go back to main menu

if (instance_exists(obj_virtualkey_back_to_main_menu))
{
	if (obj_virtualkey_back_to_main_menu.clickable == true)
	{
		if (global.paused == true)
		{
			obj_virtualkey_back_to_main_menu.clicked = false;
			audio_play_sound(snd_pause_click, 0, 0);
			instance_activate_object(obj_controller);
			global.transition = "end";
			obj_controller.tra = 1;
			obj_controller.tick = 0;
			global.level_selected = 52;
			obj_virtualkey_back_to_main_menu.clicked = false;
			obj_virtualkey_back_to_main_menu.clickable = false;
		}
	}
}

