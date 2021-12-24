/// @desc Fire laser

//Create laserbeam object
if (facing_left == true)
{
	instance_create_depth(x - 32, y + 8, 0, obj_laserbeam)
} else if (facing_right == true)
{
	instance_create_depth(x + 16, y + 8, 0, obj_laserbeam)
} else if (facing_up == true)
{
	instance_create_depth(x + 8, y - 16, 0, obj_laserbeam)
} else if (facing_down == true)
{
	instance_create_depth(x - 8, y + 16, 0, obj_laserbeam)
}

alarm_set(1, 3 * room_speed);
image_index = 9;
image_speed = 0;