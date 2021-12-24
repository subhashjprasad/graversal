/// @desc Fire cannon

//Create bullet object
if (facing_left == true)
{
	var inst = instance_create_depth(x - 20, y + 8, 0, obj_homing_bullet);
} else if (facing_right == true)
{
	var inst = instance_create_depth(x + 20, y + 8, 0, obj_homing_bullet);
} else if (facing_up == true)
{
	var inst = instance_create_depth(x + 8, y - 20, 0, obj_homing_bullet);
} else if (facing_down == true)
{
	var inst = instance_create_depth(x - 8, y + 20, 0, obj_homing_bullet);
}

alarm_set(0, 5 * room_speed);