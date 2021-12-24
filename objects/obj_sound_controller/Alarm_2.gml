/// @desc Play laser fire sound

if (instance_exists(obj_laser))
{
	audio_play_sound(snd_shoot_laser, 0, 0);
	alarm_set(3, room_speed * 3);
}
