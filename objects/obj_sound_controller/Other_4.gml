/// @desc Set alarms

if (instance_exists(obj_cannon))
{
	alarm_set(0, room_speed * 1.5);
}

if (instance_exists(obj_homing_cannon))
{
	alarm_set(1, room_speed * 5);
}

if (instance_exists(obj_laser))
{
	alarm_set(2, room_speed * 3);
}
