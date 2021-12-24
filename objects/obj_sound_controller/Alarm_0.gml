/// @desc Play bullet fire sound

if (instance_exists(obj_cannon))
{
	audio_play_sound(snd_shoot_bullet, 0, 0);
	alarm_set(0, room_speed * 1.5);
}
