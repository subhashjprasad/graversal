/// @desc Set direction

//Set the direction based on where the laser is in relation to this instance
if (place_meeting(x, y + 8, obj_laser))
{
	image_angle = 90;
	dir = 1
} else if (place_meeting(x, y - 8, obj_laser))
{
	image_angle = -90;
	dir = 3;
} else if (place_meeting(x + 8, y, obj_laser))
{
	dir = 2;
	image_angle = 0;
} else if (place_meeting(x - 8, y, obj_laser))
{
	dir = 0;
	image_angle = 0;
}

alarm_set(0, 1)
alarm_set(1, 3 * room_speed);

