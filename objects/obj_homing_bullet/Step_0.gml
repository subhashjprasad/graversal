/// @desc Check if colliding or if done animating

//Check collision
if (place_meeting(x + hspeed, y + vspeed, obj_block))
{
	sprite_index = spr_homing_bullet_destroy;
	image_angle = direction;
	speed = 0;
	image_speed = 1;

}

if (image_index == 4)
{
	instance_destroy();
}
