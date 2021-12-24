/// @desc Go back to main menu

if (instance_exists(obj_virtualkey_back_to_main_menu))
{
	if (obj_virtualkey_back_to_main_menu.clickable == true)
	{
		if (global.paused == true)
		{
			obj_virtualkey_back_to_main_menu.clicked = true;
		}
	}
}

