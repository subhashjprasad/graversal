/// @desc Purchase if enough coins

if (global.colors[9] == 0)
{
	if (global.coins >= 250)
	{
		audio_play_sound(snd_button_click, 0, 0);
		clicked_navy = true;
	}
}

if (global.colors[9] == 1)
{
	audio_play_sound(snd_button_click, 0, 0);
	switch(global.tint)
	{
		case c_maroon:
			global.colors[0] = 1;
			break;
		case c_red:
			global.colors[1] = 1;
			break;
		case c_orange:
			global.colors[2] = 1;
			break;
		case c_yellow:
			global.colors[3] = 1;
			break;
		case c_olive:
			global.colors[4] = 1;
			break;
		case c_lime:
			global.colors[5] = 1;
			break;
		case c_green:
			global.colors[6] = 1;
			break;
		case c_aqua:
			global.colors[7] = 1;
			break;
		case c_blue:
			global.colors[8] = 1;
			break;
		case c_navy:
			global.colors[9] = 1;
			break;
		case c_purple:
			global.colors[10] = 1;
			break;
		case c_fuchsia:
			global.colors[11] = 1;
			break;
		case c_white:
			global.colors[12] = 1;
			break;
	}
	global.tint = c_navy;
	global.colors[9] = 2;
	clicked_navy = true;
}