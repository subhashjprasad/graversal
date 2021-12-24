/// @desc Go to next level

if instance_exists(obj_virtualkey_next_level)
{
	if (obj_virtualkey_next_level.clickable == true)
	{
		audio_play_sound(snd_button_click, 0, 0);
		waiting = false;
		instance_activate_object(obj_controller);
		global.transition = "end";
		obj_controller.tra = 1;
		obj_controller.tick = 0;
		global.level_selected = 55;
	}
}
