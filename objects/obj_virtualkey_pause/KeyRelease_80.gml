/// @desc Start pause

if ((room != rm_level_select) && (room != rm_main_menu) && (room != rm_store) && (global.paused == false))
{
	audio_play_sound(snd_pause_click, 0, 0);
	global.paused = true;
	instance_deactivate_all(true);
	instance_create_depth(0, 0, -1, obj_virtualkey_resume);
	instance_create_depth(144, 384, -1, obj_virtualkey_back_to_main_menu);
	obj_virtualkey_back_to_main_menu.state = 0;
	clicked = false;
}
