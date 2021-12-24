/// @desc Check collision with player

//If colliding with player and not already collected
if (place_meeting(x, y, obj_player)) && (destroying == false)
{
	destroying = true;
	global.coins += value;
	audio_play_sound(snd_coin_collect, 0, 0);
	sprite_index = dis;
	obj_level_controller.alarm[10] = 1;
}