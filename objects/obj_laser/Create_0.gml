/// @desc Set sprite
facing_right = false;
facing_left = false;
facing_up = false;
facing_down = false;

//Set the sprite based on where the wall is in relation to this instance
if (prioritize == 1)
{
	sprite_index = spr_laser;
	image_xscale = 1;
	facing_right = true;
} else if (prioritize == 2)
{
	sprite_index = spr_laser;
	image_angle = 90;
	y += 16;
	facing_up = true;
} else if (prioritize == 3)
{
	sprite_index = spr_laser;
	image_xscale = -1;
	x += 16;
	facing_left = true;
} else if (prioritize == 4)
{
	sprite_index = spr_laser;
	image_angle = -90;
	x += 16;
	facing_down = true;
}

alarm_set(0, 3 * room_speed);