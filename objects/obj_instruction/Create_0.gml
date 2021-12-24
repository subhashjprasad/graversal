/// @desc Set parameters

if (room == rm_level1)
{
	sprite_index = spr_inst_gravity;
} else if (room == rm_level5)
{
	sprite_index = spr_inst_spikes;
} else if (room == rm_level13)
{
	sprite_index = spr_inst_bullet;
} else if (room == rm_level16)
{
	sprite_index = spr_inst_block_moving;
} else if (room == rm_level22)
{
	sprite_index = spr_inst_laser;
} else if (room == rm_level28)
{
	sprite_index = spr_inst_homing_bullet;
} else if (room == rm_level30)
{
	sprite_index = spr_inst_block_disappearing;
}

image_speed = 1;
depth = 99;
