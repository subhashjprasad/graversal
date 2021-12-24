/// @desc Purchase if enough coins

if (global.jump_arr[1] == 0)
{
	if (global.coins >= 500)
	{
		audio_play_sound(snd_button_click, 0, 0);
		clicked1 = true;
	}
}

if (global.jump_arr[1] == 1)
{
	audio_play_sound(snd_button_click, 0, 0);
	switch(global.jump_boost)
	{
		case 0:
			global.jump_arr[0] = 1;
			break;
		case 1:
			global.jump_arr[1] = 1;
			break;
		case 2:
			global.jump_arr[2] = 1;
			break;
		case 3:
			global.jump_arr[3] = 1;
			break;
	}
	global.jump_boost = 1;
	global.jump_arr[1] = 2;
	clicked1 = true;
}