/// @desc Go back to the main menu

if instance_exists(obj_virtualkey_back_to_main_menu)
{
	if (obj_virtualkey_back_to_main_menu.clickable == true)
	{
		if (room != rm_main_menu)
		{
			if (waiting == true)
			{
				audio_play_sound(snd_button_click, 0, 0);
				global.transition = "end";
				obj_controller.tra = 1;
				obj_controller.tick = 0;
				global.level_selected = 50;
				obj_virtualkey_back_to_main_menu.clicked = false;
				obj_virtualkey_back_to_main_menu.clickable = false;
			} else
			{
				audio_play_sound(snd_pause_click, 0, 0);
				global.transition = "end";
				obj_controller.tra = 1;
				obj_controller.tick = 0;
				global.level_selected = 50;
				obj_virtualkey_back_to_main_menu.clicked = false;
				obj_virtualkey_back_to_main_menu.clickable = false;
			}
		}
	}
}
