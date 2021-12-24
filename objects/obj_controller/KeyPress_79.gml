/// @desc Restart room

if instance_exists(obj_virtualkey_retry)
{
	if (obj_virtualkey_retry.clickable == true)
	{
		if (waiting == true)
		{
			audio_play_sound(snd_button_click, 0, 0);
			global.transition = "end";
			obj_controller.tra = 1;
			obj_controller.tick = 0;
			global.level_selected = 51;
			obj_virtualkey_retry.clickable = false;
		}
	}
}
