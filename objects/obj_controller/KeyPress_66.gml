/// @desc Go back to the main menu

if instance_exists(obj_virtualkey_back_to_main_menu)
{
	if (obj_virtualkey_back_to_main_menu.clickable == true)
	{
		if (room != rm_main_menu)
		{
			if (waiting == true)
			{
				obj_virtualkey_back_to_main_menu.clicked = true;
			} else
			{
				obj_virtualkey_back_to_main_menu.clicked = true;
			}
		}
	}
}
