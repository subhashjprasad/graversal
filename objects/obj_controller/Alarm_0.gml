/// @desc Update death sprite

if (sub < 15)
{
	sub += 1;
	alarm[0] = 3;
} else
{
	waiting = true;
	instance_deactivate_all(true);
	instance_create_depth(352, 208, -10, obj_virtualkey_retry);
	instance_create_depth(144, 384, -10, obj_virtualkey_back_to_main_menu);
	obj_virtualkey_back_to_main_menu.state = 2;
}
