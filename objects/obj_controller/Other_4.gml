/// @desc Initialize stuff

global.grv = 0.1;
global.grv_down = true;
global.dead = false;
dead = false;
once = false;
waiting = false;
sub = 0;
gravity_tick = 0;
gravity_interval = 4;
tra = 8;
tick = 0;
global.transition = "start";
depth = -9;
instance_create_depth(0, 0, -11, obj_transition_controller);

if ((room != rm_level_select) && (room != rm_main_menu) && (room != rm_store))
{
	if (!instance_exists(obj_virtualkey_left))
	{
		instance_create_depth(128, 96, 0, obj_virtualkey_left);
	}

	if (!instance_exists(obj_virtualkey_jump))
	{
		instance_create_depth(112, 128, 0, obj_virtualkey_jump);
	}
	
	audio_stop_sound(snd_menu_music);
	if (menu_playing == true)
	{
		audio_play_sound(snd_game_music, 0, true);
		menu_playing = false;
	}
} else
{
	if (instance_exists(obj_virtualkey_left))
	{
		instance_destroy(obj_virtualkey_left);
	}

	if (instance_exists(obj_virtualkey_jump))
	{
		instance_destroy(obj_virtualkey_jump);
	}
	
	audio_stop_sound(snd_game_music);
	if (menu_playing == false) 
	{
		audio_play_sound(snd_menu_music, 0, true);
		menu_playing = true;
	}
}

if (room == rm_store)
{
	var x_pos = display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2;
	var y_pos = display_get_height() - 20;
	instance_create_depth(x_pos, y_pos, -1, obj_virtualkey_back_to_main_menu);
	obj_virtualkey_back_to_main_menu.state = 3;
}

if (room == rm_level_select)
{
	obj_virtualkey_back_to_main_menu.state = 5;
}