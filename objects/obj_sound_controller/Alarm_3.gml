/// @desc Stop laser fire sound

if (instance_exists(obj_laser))
{
	audio_stop_sound(snd_shoot_laser);
	alarm_set(2, room_speed * 3);
}
