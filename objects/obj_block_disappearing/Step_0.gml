/// @desc Check collision with player

if (dur <= 0)
{
	audio_play_sound(snd_disappear, 0, 0);
	instance_destroy();
}

if ((place_meeting(x, y + 1, obj_player)) || (place_meeting(x, y - 1, obj_player)))
{
	dur -= 1;
}

image_alpha = dur/50;