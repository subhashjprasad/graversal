/// @desc Resume 

if (instance_exists(obj_virtualkey_back_to_main_menu))
{
	if (obj_virtualkey_resume.clickable == true)
	{
		if (global.paused == true)
		{
			obj_virtualkey_resume.clicked = false;
			obj_virtualkey_resume.clickable = false;
			audio_play_sound(snd_pause_click, 0, 0);
			global.paused = false;
			with (obj_virtualkey_resume) virtual_key_delete(vkey_resume);
			instance_destroy(obj_virtualkey_resume);
			with (obj_virtualkey_back_to_main_menu) virtual_key_delete(vkey_back_to_main_menu);
			instance_destroy(obj_virtualkey_back_to_main_menu);
			instance_activate_all();
		}
	}
}

