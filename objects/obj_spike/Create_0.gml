/// @desc Set sprite

//Set the sprite based on where the wall is in relation to this instance
if (prioritize == 0)
{
	if (place_meeting(x, y + 8, obj_block))
	{
		sprite_index = spr_spike;
		image_yscale = 1;
	} else if (place_meeting(x, y - 8, obj_block))
	{
		sprite_index = spr_spike;
		image_yscale = -1;
		y += 16;
	} else if (place_meeting(x + 8, y, obj_block))
	{
		sprite_index = spr_spike;
		image_angle = 90;
		y += 16;
	} else if (place_meeting(x - 8, y, obj_block))
	{
		sprite_index = spr_spike;
		image_angle = -90;
		x += 16
	}
} else if (prioritize == 1)
{
	sprite_index = spr_spike;
	image_angle = -90;
	x += 16
} else if (prioritize == 2)
{
	sprite_index = spr_spike;
	image_yscale = 1;
} else if (prioritize == 3)
{
	sprite_index = spr_spike;
	image_angle = 90;
	y += 16;
} else if (prioritize == 4)
{
	sprite_index = spr_spike;
	image_yscale = -1;
	y += 16;
}