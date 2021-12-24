/// @desc Set coin amount and randomize

global.coins = 0;
global.paused = false;
global.level_lock = array_create(48, 0);
global.level_lock[0] = 1;
global.colors = array_create(13, 0);
global.colors[12] = 2;
global.jump_arr = array_create(4, 0);
global.jump_arr[0] = 2;
global.tutorial_completed = 0;
global.tint = c_white;
global.jump_boost = 0;
audio_play_sound(snd_menu_music, 0, true);
menu_playing = true;
dont_draw = false;

randomize();

