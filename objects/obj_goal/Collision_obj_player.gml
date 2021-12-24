/// @desc Show end level screen

waiting = true;
audio_play_sound(snd_win, 0, 0);
audio_play_sound(snd_clapping, 0, 0);
instance_deactivate_all(true);
instance_activate_object(obj_save_and_load);
obj_save_and_load.alarm[0] = 1;
global.level_lock[global.current_level] = 1;
instance_create_depth(288, 208, -1, obj_virtualkey_next_level);
instance_create_depth(144, 384, -1, obj_virtualkey_back_to_main_menu);
obj_virtualkey_back_to_main_menu.state = 1;
