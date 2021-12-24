/// @desc Go back to main menu

if instance_exists(obj_virtualkey_back_to_main_menu)
{
		if (obj_virtualkey_back_to_main_menu.clickable == true)
	{
		audio_play_sound(snd_button_click, 0, 0);
		waiting = false;
		instance_activate_object(obj_controller);
		global.transition = "end";
		obj_controller.tra = 1;
		obj_controller.tick = 0;
		global.level_selected = 50;
		obj_virtualkey_back_to_main_menu.clicked = false;
	}
}

