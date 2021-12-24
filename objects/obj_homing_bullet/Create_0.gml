/// @desc Set alarm to follow player

if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, 1.5);
	image_angle = direction;
}

alarm_set(0, 10);