/// @desc Play homing bullet fire sound

if (instance_exists(obj_homing_cannon))
{
	audio_play_sound(snd_shoot_bullet, 0, 0);
	alarm_set(1, room_speed * 5);
}