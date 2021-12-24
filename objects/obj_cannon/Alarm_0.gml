/// @desc Fire cannon

//Create bullet object
if (facing_left == true)
{
	var inst = instance_create_depth(x - 20, y + 8, 0, obj_bullet);
	image_index = 9;
	inst.direction = 180;
	inst.speed = 3;
} else if (facing_right == true)
{
	var inst = instance_create_depth(x + 20, y + 8, 0, obj_bullet);
	image_index = 9;
	inst.direction = 0;
	inst.speed = 3;
} else if (facing_up == true)
{
	var inst = instance_create_depth(x + 8, y - 20, 0, obj_bullet);
	image_index = 9;
	inst.direction = 90;
	inst.speed = 3;
} else if (facing_down == true)
{
	var inst = instance_create_depth(x - 8, y + 20, 0, obj_bullet);
	image_index = 9;
	inst.direction = 270;
	inst.speed = 3;
}

alarm_set(0, room_speed * 1.5);